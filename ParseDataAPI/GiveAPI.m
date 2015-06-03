//
//  GiveAPI.m
//  ParseDataAPI
//
//  Created by Mariam Dost on 2015-06-02.
//  Copyright (c) 2015 Mariam Dost. All rights reserved.
//

#import "GiveAPI.h"

@implementation GiveAPI

-(instancetype)initWithParameters:(NSDictionary *)parameters{
    self =[super init];
    
    if(self){
        [self setStatus_codes:[parameters valueForKey:@"status-code"]];
        _status_code_description=[parameters valueForKey:@"status-code-description"];

    }
    
    return self;
}

-(void)setStatus_codes:(NSString *)status_code{
    _status_code= [status_code intValue];
}

@end
