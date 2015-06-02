//
//  CharityDetails.m
//  ParseDataAPI
//
//  Created by Mariam Dost on 2015-06-02.
//  Copyright (c) 2015 Mariam Dost. All rights reserved.
//

#import "CharityDetails.h"

@implementation CharityDetails

-(instancetype)initWithParameters:(NSDictionary *)parameters{
    self = [super init];
    
    if (self) {
        _CharitableStatus = parameters[@"CharitableStatus"];
        _CharityAddress=parameters[@"CharityAddress"];
        _CharityCity=parameters[@"CharityCity"];
        _CharityCountry=parameters[@"CharityCountry"];
        _CharityEmail=parameters[@"CharityEmail"];
        _CharityFax=parameters[@"CharityFax"];
        _CharityIntelligenceURL=parameters[@"CharityIntelligenceURL"];
        _CharityName=parameters[@"CharityName"];
        _CharityOppName=parameters[@"CharityOppName"];
        _CharityPhone1=parameters[@"CharityPhone1"];
        _CharityPhone2=parameters[@"CharityPhone2"];
        _CharityPostalCode=parameters[@"CharityPostalCode"];
        _CharityProvState=parameters[@"CharityProvState"];
        _CharitySize=parameters[@"CharitySize"];
        _CharitySubType=parameters[@"CharitySubType"];
        _CharityType=parameters[@"CharityType"];
        _CharityUrl=parameters[@"CharityUrl"];
        
    }
    
    return self;
}

@end
