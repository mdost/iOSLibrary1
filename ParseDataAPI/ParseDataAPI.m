//
//  ParseDataAPI.m
//  ParseDataAPI
//
//  Created by Mariam Dost on 2015-05-26.
//  Copyright (c) 2015 Mariam Dost. All rights reserved.
//

#import "ParseDataAPI.h"

@implementation ParseDataAPI

-(NSData *)createConnection:(NSString*)token :(NSString*)regNum{
    NSMutableString *url= [NSMutableString stringWithString: @"https://app.place2give.com/Service.svc/give-api?action=getCharitySalaries&token="];
   
    //check that the parameters are not null
    if (regNum ==nil || token == nil) {
        return nil;
    }
    
    [url appendString:token];
    [url appendFormat:@"&regNum=",regNum];
    [url appendString:@"&format=json"];
    
    //create connection and retrieve data.
    NSURL *urlConnection = [NSURL URLWithString:url];
    NSURLRequest *request = [NSURLRequest requestWithURL:urlConnection];
    NSURLResponse *response = nil;
    NSError *error = nil;
    NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
    
    
    return data;
}

-(CharitySalaries *)getCharitySalaries:(NSString*)token :(NSString*)regNum{
    //create connection and reterieve data
    NSData *data = [self createConnection:token :regNum];
    NSError *error=nil;
    
    //parse the data which is in the format json
    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&error];
    
    NSMutableDictionary *response =[json valueForKeyPath:@"give-api.data.charitySalaries.salaryData"];
    CharitySalaries *cs = [[CharitySalaries alloc] init];
    cs.NumTop10_1_39999 = [response valueForKey:@"NumTop10_1_39999"];
    cs.TotalCompensationOrganization=[response valueForKey:@"TotalCompensationOrganization"];
    
    return cs;
}

@end
