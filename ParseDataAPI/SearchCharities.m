//
//  SearchCharities.m
//  ParseDataAPI
//
//  Created by Mariam Dost on 2015-06-02.
//  Copyright (c) 2015 Mariam Dost. All rights reserved.
//

#import "SearchCharities.h"

@implementation SearchCharities

-(instancetype)initWithParameters:(NSDictionary *)parameters{
    self = [super init];
    
    if(self){
        _Name= parameters[@"Name"];
        _regNum= parameters[@"regNum"];
        _Description= parameters[@"Description"];
        _Type= parameters[@"Type"];
        _ProvState= parameters[@"ProvState"];
        _City= parameters[@"City"];
        _Country= parameters[@"Country"];
        _CharitySize= parameters[@"CharitySize"];
        _LogoUrl= parameters[@"LogoUrl"];
        _OperatingCountry= parameters[@"OperatingCountry"];
        _ContactInfo = [[ContactInfoDetails alloc] initWithParameters:parameters[@"ContactInfo"]];
    }
    
    return self;
}

@end
