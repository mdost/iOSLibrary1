//
//  CharitySalaries.m
//  ParseDataAPI
//
//  Created by Mariam Dost on 2015-05-27.
//  Copyright (c) 2015 Mariam Dost. All rights reserved.
//

#import "CharitySalaries.h"
#import <Foundation/Foundation.h>

@implementation CharitySalaries

-(void)setNumTop10_1_39999:(NSString *)value{
    _NumTop10_1_39999 = [value intValue];
}

-(void)setTotalCompensationOrganization:(NSString *)value{
    _TotalCompensationOrganization= [value intValue];
}

@end