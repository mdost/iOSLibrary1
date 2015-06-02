//
//  DonationURL.h
//  ParseDataAPI
//
//  Created by Mariam Dost on 2015-06-02.
//  Copyright (c) 2015 Mariam Dost. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DonationURL : NSObject

@property NSString * donationURL;
@property NSString * expires;

-(instancetype)initWithParameters:(NSDictionary *)parameters;

@end
