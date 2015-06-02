//
//  ContactInfoDetails.h
//  ParseDataAPI
//
//  Created by Mariam Dost on 2015-06-02.
//  Copyright (c) 2015 Mariam Dost. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ContactInfoDetails : NSObject

@property NSString * NameOfStaff;
@property NSString * Email;
@property NSString * URL;
@property NSString * Phone;

-(instancetype)initWithParameters:(NSDictionary *)parameters;

@end
