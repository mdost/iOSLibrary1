//
//  ParseDataAPI.m
//  ParseDataAPI
//
//  Created by Mariam Dost on 2015-05-26.
//  Copyright (c) 2015 Mariam Dost. All rights reserved.
//

#import "ParseDataAPI.h"

@implementation ParseDataAPI

static dispatch_once_t once;
volatile static bool run_once_only=false;

/**
 * creates a connection
 */
-(NSData *)createConnection:(NSMutableString *)url{
    //create connection and retrieve data.
    NSURL *urlConnection = [NSURL URLWithString:url];
    NSURLRequest *request = [NSURLRequest requestWithURL:urlConnection];
    NSURLResponse *response = nil;
    NSError *error = nil;
    NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
    
    return data;
}

-(void)validateToken:(NSString *)token{
    NSRange invalidCharacters = [token rangeOfCharacterFromSet:[NSCharacterSet whitespaceCharacterSet]];
    if(run_once_only == false){
        NSLog(@"Please call getToken first.");
    }else if(token.length != 36 || token ==nil || invalidCharacters.location != NSNotFound){
        NSLog(@"token is not of correct size, or null or contains invalid characters.");
    }
}

//only be asked once.
-(NSString *)getToken:(NSString *)appid :(NSString *)appSecret{
    if(appid == nil || appSecret ==nil)
        return nil;
    
    NSMutableString *url= [NSMutableString stringWithString: @"https://app.place2give.com/Service.svc/give-api-auth?app_id="];
    [url appendString:appid];
    [url appendFormat:@"&app_secret=%@", appSecret];
    [url appendString:@"&format=json"];
    __block NSString *token=nil;
    
    @synchronized(self){
        if(run_once_only == false){
            run_once_only= true;
            
            dispatch_once(&once, ^{
                NSData *data = [self createConnection:url];
                NSError *error=nil;
                
                NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&error];
                NSMutableDictionary *response =[json valueForKeyPath:@"give-api.data"];
                token = [response valueForKey:@"token"];
                
            });
        }
    }
    return token;
    
}

-(DonationURL*)getDonationURL:(NSString *)token :(Info *)obj{
    if(token == nil)
        return nil;
    
    NSMutableString *url= [NSMutableString stringWithString: @"https://app.place2give.com/Service.svc/give-api?action=getDonationURL&token="];
    [url appendString:token];
    
    if (obj.amount == nil || obj.currency == nil || obj.regNum == nil || obj.backURL == nil || obj.redirectURL == nil || obj.projectType == nil) {
        return nil;
    }
    [url appendFormat:@"&Amount=%@",obj.amount];
    [url appendFormat:@"&Currency=%@",obj.currency];
    [url appendFormat:@"&regNum=%@",obj.regNum];
    [url appendFormat:@"&BackURL=%@",obj.backURL];
    [url appendFormat:@"&RedirectURL=%@",obj.redirectURL];
    [url appendFormat:@"&ProjectType=%@",obj.projectType];
    [url appendFormat:@"&IsAnonymous=%@",obj.isAnonymous ? @"true" : @"false"];
    [url appendString:@"&format=json"];
    
    NSData *data = [self createConnection:url];
    NSError *error=nil;
    
    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&error];
    NSMutableDictionary *message =[json valueForKeyPath:@"give-api"];
    NSMutableDictionary *response =[json valueForKeyPath:@"give-api.data"];
    DonationURL *du = [[DonationURL alloc] initWithParameters:response :message];
    
    return du;
}

-(NSMutableArray*)searchCharities:(NSString *)token :(NSString *)pageNum :(NSString *)NumPerPage :(NSString *)charitySize :(NSString *)charityType :(NSString *)keyword :(NSString *)country :(NSString *)provState{
    if(token == nil)
        return nil;
    
    NSMutableString *url= [NSMutableString stringWithString: @"https://app.place2give.com/Service.svc/give-api?action=searchCharities&token="];
    [url appendString:token];
    [url appendFormat:@"&PageNumber=%@",pageNum];
    [url appendFormat:@"&NumPerPage=%@",NumPerPage];
    [url appendFormat:@"&CharitySize=%@",charitySize];
    [url appendFormat:@"&Country=%@",country];
    //    [url appendFormat:@"&ProvState=%@",provState];
    //    [url appendFormat:@"&Keyword=%@",keyword];
    //    [url appendFormat:@"&CharityType=%@",charityType];
    [url appendString:@"&format=json"];
    
    NSData *data = [self createConnection:url];
    NSError *error=nil;
    
    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&error];
    NSMutableDictionary *message =[json valueForKeyPath:@"give-api"];
    NSMutableDictionary *response =[json valueForKeyPath:@"give-api.data.charities.charity"];
    
    NSMutableArray *array = [[NSMutableArray alloc] init];
    
    //check error condition to ensure the retrieval was successful. If not then add error message to object and return it in an array.
    SearchCharities *getError =[[SearchCharities alloc] initWithParameters:nil :message];
    if (getError.status_code != 100) {
        [array addObject:getError];
        return array;
    }
    
    
    for(NSDictionary *i in response){
        SearchCharities *sc = [[SearchCharities alloc] initWithParameters:i :message];
        [array addObject:sc];
    }
    
    return array;
}

-(NSMutableArray *)getFinancialDetails:(NSString *)token :(NSString *)regNum{
    if(token == nil)
        return nil;
    
    NSMutableString *url= [NSMutableString stringWithString: @"https://app.place2give.com/Service.svc/give-api?action=getFinancialDetails&token="];
    [url appendString:token];
    [url appendFormat:@"&regNum=%@",regNum];
    [url appendString:@"&format=json"];
    
    NSData *data = [self createConnection:url];
    NSError *error=nil;
    
    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&error];
    NSMutableDictionary *message =[json valueForKeyPath:@"give-api"];
    NSMutableDictionary *response =[json valueForKeyPath:@"give-api.data.financialDetails.financialData"];
    
    NSMutableArray *array = [[NSMutableArray alloc] init];
    
    //check error condition to ensure the retrieval was successful. If not then add error message to object and return it in an array.
    FinancialDetails *getError =[[FinancialDetails alloc] initWithParameters:nil :message];
    if (getError.status_code != 100) {
        [array addObject:getError];
        return array;
    }
    
    for(NSDictionary *i in response){
        FinancialDetails *fd = [[FinancialDetails alloc] initWithParameters:i :message];
        [array addObject:fd];
    }
    
    return array;
    
}

-(CharityDetails *)getCharityDetails:(NSString *)token :(NSString *)regNum{
    if(token == nil)
        return nil;
    
    NSMutableString *url= [NSMutableString stringWithString: @"https://app.place2give.com/Service.svc/give-api?action=getCharityDetails&token="];
    [url appendString:token];
    [url appendFormat:@"&regNum=%@",regNum];
    [url appendString:@"&format=json"];
    
    NSData *data = [self createConnection:url];
    NSError *error=nil;
    
    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&error];
    NSMutableDictionary *message =[json valueForKeyPath:@"give-api"];
    NSMutableDictionary *response =[json valueForKeyPath:@"give-api.data"];
    CharityDetails *cd = [[CharityDetails alloc] initWithParameters:response :message];
    
    return cd;
}

-(NSMutableArray *)getCharityFiles:(NSString *)token :(NSString *)regNum{
    if(token == nil)
        return nil;
    
    NSMutableString *url= [NSMutableString stringWithString: @"https://app.place2give.com/Service.svc/give-api?action=getCharityFiles&token="];
    [url appendString:token];
    [url appendFormat:@"&regNum=%@",regNum];
    [url appendString:@"&format=json"];
    
    NSData *data = [self createConnection:url];
    NSError *error=nil;
    
    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&error];
    NSMutableDictionary *message =[json valueForKeyPath:@"give-api"];
    NSMutableDictionary *response =[json valueForKeyPath:@"give-api.data.charityFiles.file"];
    
    NSMutableArray *array = [[NSMutableArray alloc] init];
    
    //check error condition to ensure the retrieval was successful. If not then add error message to object and return it in an array.
    CharityFiles *getError =[[CharityFiles alloc] initWithParameters:nil :message];
    if (getError.status_code != 100) {
        [array addObject:getError];
        return array;
    }
    
    
    for(NSDictionary *i in response){
        CharityFiles *cf = [[CharityFiles alloc] initWithParameters:i :message];
        [array addObject:cf];
    }
    
    return array;
}


/**
 * Return the prov state
 */
-(NSMutableArray *)getProvState:(NSString *)token :(NSString *)country{
    if(token == nil)
        return nil;
    
    NSMutableString *url= [NSMutableString stringWithString: @"https://app.place2give.com/Service.svc/give-api?action=getProvState&token="];
    [url appendString:token];
    [url appendFormat:@"&Country=%@",country];
    [url appendString:@"&format=json"];
    
    NSData *data = [self createConnection:url];
    NSError *error=nil;
    
    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&error];
    NSMutableDictionary *message =[json valueForKeyPath:@"give-api"];
    NSMutableDictionary *response =[json valueForKeyPath:@"give-api.data.proveStates.provState.provState"];
    
    NSMutableArray *array = [[NSMutableArray alloc] init];
    
    //check error condition to ensure the retrieval was successful. If not then add error message to object and return it in an array.
    ProvState *getError =[[ProvState alloc] initWithParameters:nil :message];
    if (getError.status_code != 100) {
        [array addObject:getError];
        return array;
    }
    
    
    for(NSDictionary * i in response){
        ProvState *ps = [[ProvState alloc] initWithParameters:i :message];
        [array addObject:ps];
    }
    
    return array;
}

/**
 * Returns the project of charity
 */
-(NSMutableArray *)getCharityProject:(NSString *)token :(NSString *)regNum{
    if(token == nil)
        return nil;
    
    NSMutableString *url= [NSMutableString stringWithString: @"https://app.place2give.com/Service.svc/give-api?action=getCharityProjects&token="];
    
    [url appendString:token];
    [url appendFormat:@"&regNum=%@",regNum];
    [url appendString:@"&format=json"];
    
    NSData *data = [self createConnection:url];
    NSError *error=nil;
    
    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&error];
    NSMutableArray *charityProject=[[NSMutableArray alloc]init];
    
    NSMutableDictionary *message =[json valueForKeyPath:@"give-api"];
    NSMutableDictionary *response =[json valueForKeyPath:@"give-api.data.charityProjects.project"];
    
    //check error condition to ensure the retrieval was successful. If not then add error message to object and return it in an array.
    CharityProject *getError =[[CharityProject alloc] initWithParameters:nil :message];
    if (getError.status_code != 100) {
        [charityProject addObject:getError];
        return charityProject;
    }
    
    for(NSDictionary *i in response){
        CharityProject *cp =[[CharityProject alloc] initWithParameters:i :message];
        [charityProject addObject:cp];
    }
    
    return charityProject;
}

/**
 * Returns the charity type
 */
-(NSMutableArray *)getCharityType:(NSString *)token{
    if(token == nil)
        return nil;
    
    NSMutableString *url= [NSMutableString stringWithString: @"https://app.place2give.com/Service.svc/give-api?action=getCharityTypes&token="];
    
    [url appendString:token];
    [url appendString:@"&format=json"];
    
    NSData *data = [self createConnection:url];
    NSError *error=nil;
    
    //parse the data which is in the format json
    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&error];
    NSMutableArray *charityTypeArray= [[NSMutableArray alloc] init];
    
    int status_code =[[json valueForKeyPath:@"give-api.status-code"] intValue];
    NSString *status_code_description =[json valueForKeyPath:@"give-api.status-code-description"];
    
    if(status_code != 100){
        [charityTypeArray addObject:[NSNumber numberWithInt:status_code]];
        [charityTypeArray addObject:status_code_description];
        return charityTypeArray;
        
    }
    
    NSMutableDictionary *response =[json valueForKeyPath:@"give-api.data.charityTypes.charityType.type"];
    
    for(id key in response){
        [charityTypeArray addObject:key];
    }
    
    return charityTypeArray;
    
}

/**
 * Returns an object of type CharitySalaries that contains the salaries of a specific charity found by the registrantion number (regNum)
 */
-(CharitySalaries *)getCharitySalaries:(NSString*)token :(NSString*)regNum{
    NSMutableString *url= [NSMutableString stringWithString: @"https://app.place2give.com/Service.svc/give-api?action=getCharitySalaries&token="];
    
    [self validateToken:token];
    
    //check that the parameters are not null
    if (regNum ==nil) {
        return nil;
    }
    
    [url appendString:token];
    [url appendFormat:@"&regNum=%@",regNum];
    [url appendString:@"&format=json"];
    
    //create connection and reterieve data
    NSData *data = [self createConnection:url];
    NSError *error=nil;
    
    //parse the data which is in the format json
    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&error];
    NSMutableDictionary *message =[json valueForKeyPath:@"give-api"];
    NSMutableDictionary *response =[json valueForKeyPath:@"give-api.data.charitySalaries.salaryData"];
    
    CharitySalaries *cs = [[CharitySalaries alloc] initWithParameters:response :message];
    
    return cs;
}

@end
