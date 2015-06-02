//
//  SearchCharities.h
//  ParseDataAPI
//
//  Created by Mariam Dost on 2015-06-02.
//  Copyright (c) 2015 Mariam Dost. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ContactInfoDetails.h"

@interface SearchCharities : NSObject

@property NSString * regNum;
@property NSString * Name;
@property NSString * Description;
@property NSString * Type;
@property int TypeID;
@property NSString * ProvState;
@property NSString * City;
@property NSString * Country;
@property NSString * CharitySize;
@property NSString * LogoUrl;
@property NSString * OperatingCountry;
@property ContactInfoDetails* ContactInfo;

-(instancetype)initWithParameters:(NSDictionary *)parameters;


@end
