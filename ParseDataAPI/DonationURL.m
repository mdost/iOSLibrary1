//
//  DonationURL.m
//  ParseDataAPI
//
//  Created by Mariam Dost on 2015-06-02.
//  Copyright (c) 2015 Mariam Dost. All rights reserved.
//

#import "DonationURL.h"

@implementation DonationURL

-(instancetype)initWithParameters:(NSDictionary *)parameters :(NSDictionary*)error{
    self=[super init];
    
    if (self) {
        _donationURL = [parameters valueForKey:@"donationURL"];
        _expires = [parameters valueForKey:@"expires"];
        [self setStatus_codes:[error valueForKey:@"status-code"]];
        self.status_code_description=[error valueForKey:@"status-code-description"];
    }
    
    return self;
}

@end
