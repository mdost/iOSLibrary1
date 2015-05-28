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

-(void)setNumTop10_40K_79999:(NSString *)value{
    _NumTop10_40K_79999 = [value intValue];
}

-(void)setNumTop10_80K_119999:(NSString *)value{
    _NumTop10_80K_119999 = [value intValue];
}

-(void)setNumTop10_120K_159999:(NSString *)value{
    _NumTop10_120K_159999 = [value intValue];
}

-(void)setNumTop10_160K_199999:(NSString *)value{
    _NumTop10_160K_199999 = [value intValue];
}

-(void)setNumTop10_200K_249999:(NSString *)value{
    _NumTop10_200K_249999 = [value intValue];
}

-(void)setNumTop10_250K_299999:(NSString *)value{
    _NumTop10_250K_299999 = [value intValue];
}

-(void)setNumTop10_300K_349999:(NSString *)value{
    _NumTop10_300K_349999 = [value intValue];
}

-(void)setNumTop10_350K_Plus:(NSString *)value{
    _NumTop10_350K_Plus = [value intValue];
}

-(void)setTotalCompensationPartTimeEmployees:(NSString *)value{
    _TotalCompensationPartTimeEmployees= [value intValue];
}

-(void)setTotalCompensationOrganization:(NSString *)value{
    _TotalCompensationOrganization= [value intValue];
}

@end