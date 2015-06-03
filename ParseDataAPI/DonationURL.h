//
//  DonationURL.h
//  ParseDataAPI
//
//  Created by Mariam Dost on 2015-06-02.
//  Copyright (c) 2015 Mariam Dost. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GiveAPI.h"

@interface DonationURL : GiveAPI

@property NSString * donationURL;
@property NSString * expires;

-(instancetype)initWithParameters:(NSDictionary *)parameters :(NSDictionary *)error;

@end
