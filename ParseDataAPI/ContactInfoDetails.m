//
//  ContactInfoDetails.m
//  ParseDataAPI
//
//  Created by Mariam Dost on 2015-06-02.
//  Copyright (c) 2015 Mariam Dost. All rights reserved.
//

#import "ContactInfoDetails.h"

@implementation ContactInfoDetails

-(instancetype)initWithParameters:(NSDictionary *)parameters{
    self =[super init];
    
    if(self){
        _Email = [parameters valueForKey:@"Email"];
        _NameOfStaff = [parameters valueForKey:@"NameOfStaff"];
        _Phone = [parameters valueForKey:@"Phone"];
        _URL = [parameters valueForKey:@"URL"];
    }
    
    return self;
}

@end
