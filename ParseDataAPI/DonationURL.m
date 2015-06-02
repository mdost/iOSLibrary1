//
//  DonationURL.m
//  ParseDataAPI
//
//  Created by Mariam Dost on 2015-06-02.
//  Copyright (c) 2015 Mariam Dost. All rights reserved.
//

#import "DonationURL.h"

@implementation DonationURL

-(instancetype)initWithParameters:(NSDictionary *)parameters{
    self=[super init];
    
    if (self) {
        _donationURL = [parameters valueForKey:@"donationURL"];
        _expires = [parameters valueForKey:@"expires"];
    }
    
    return self;
}

@end
