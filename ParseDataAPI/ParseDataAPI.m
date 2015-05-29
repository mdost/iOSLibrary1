//
//  ParseDataAPI.m
//  ParseDataAPI
//
//  Created by Mariam Dost on 2015-05-26.
//  Copyright (c) 2015 Mariam Dost. All rights reserved.
//

#import "ParseDataAPI.h"

@implementation ParseDataAPI

-(NSData *)createConnection:(NSMutableString *)url{
    //create connection and retrieve data.
    NSURL *urlConnection = [NSURL URLWithString:url];
    NSURLRequest *request = [NSURLRequest requestWithURL:urlConnection];
    NSURLResponse *response = nil;
    NSError *error = nil;
    NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
    
    return data;
}

-(NSMutableArray *)getCharityType:(NSString *)token{
    NSMutableString *url= [NSMutableString stringWithString: @"https://app.place2give.com/Service.svc/give-api?action=getCharityTypes&token="];
    
    if(token == nil)
        return nil;
    [url appendString:token];
    [url appendString:@"&format=json"];
    
    NSData *data = [self createConnection:url];
    NSError *error=nil;
    
    //parse the data which is in the format json
    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&error];
    NSMutableDictionary *response =[json valueForKeyPath:@"give-api.data.charityTypes.charityType.type"];
    NSMutableArray *charityTypeArray= [[NSMutableArray alloc] init];
    
    for(id key in response){
        [charityTypeArray addObject:key];
    }
    
    //    CharityType *charity_type;
    //    for(id key in response2){
    //        charity_type= [[CharityType alloc] init];
    //        NSString *value = [NSString stringWithFormat:@"%@", key];
    //        [charity_type setType:value];
    //        [charityTypeArray addObject:charity_type];
    ////        NSLog(@"key= %@", );
    //    }
    
    //    for(CharityType *type in charityTypeArray){
    //        NSLog(@"key= %@", type.type);
    //    }
    
    //    NSArray *charityTypes = [response valueForKey:@"charityType"];
    
    return charityTypeArray;
    
}

/**
 * Returns an object of type CharitySalaries that contains the salaries of a specific charity found by the registrantion number (regNum)
 */
-(CharitySalaries *)getCharitySalaries:(NSString*)token :(NSString*)regNum{
    NSMutableString *url= [NSMutableString stringWithString: @"https://app.place2give.com/Service.svc/give-api?action=getCharitySalaries&token="];
    
    //check that the parameters are not null
    if (regNum ==nil || token == nil) {
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
    
    NSMutableDictionary *response =[json valueForKeyPath:@"give-api.data.charitySalaries.salaryData"];
    CharitySalaries *cs = [[CharitySalaries alloc] init];
    
    NSString *NumTop10_1_39999 = [response valueForKey:@"NumTop10_1_39999"];
    NSString *NumTop10_40K_79999 = [response valueForKey:@"NumTop10_40K_79999"];
    NSString *NumTop10_80K_119999 = [response valueForKey:@"NumTop10_80K_119999"];
    NSString *NumTop10_120K_159999 = [response valueForKey:@"NumTop10_120K_159999"];
    NSString *NumTop10_160K_199999 = [response valueForKey:@"NumTop10_160K_199999"];
    NSString *NumTop10_200K_249999 = [response valueForKey:@"NumTop10_200K_249999"];
    NSString *NumTop10_250K_299999 = [response valueForKey:@"NumTop10_250K_299999"];
    NSString *NumTop10_300K_349999 = [response valueForKey:@"NumTop10_300K_349999"];
    NSString *NumTop10_350K_Plus = [response valueForKey:@"NumTop10_350K_Plus"];
    NSString *TotalCompensationPartTimeEmployees = [response valueForKey:@"TotalCompensationPartTimeEmployees"];
    NSString *TotalCompensationOrganization=[response valueForKey:@"TotalCompensationOrganization"];
    
    [cs setNumTop10_1_39999:NumTop10_1_39999];
    [cs setNumTop10_40K_79999:NumTop10_40K_79999];
    [cs setNumTop10_80K_119999:NumTop10_80K_119999];
    [cs setNumTop10_120K_159999:NumTop10_120K_159999];
    [cs setNumTop10_160K_199999:NumTop10_160K_199999];
    [cs setNumTop10_200K_249999:NumTop10_200K_249999];
    [cs setNumTop10_250K_299999:NumTop10_250K_299999];
    [cs setNumTop10_300K_349999:NumTop10_300K_349999];
    [cs setNumTop10_350K_Plus:NumTop10_350K_Plus];
    [cs setTotalCompensationPartTimeEmployees:TotalCompensationPartTimeEmployees];
    [cs setTotalCompensationOrganization:TotalCompensationOrganization];
    
    return cs;
}

@end
