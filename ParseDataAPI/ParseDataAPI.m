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

@end
