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

-(instancetype)initWithParameters:(NSDictionary *)parameters :(NSDictionary*)error{
    self = [super init];
    
    if (self) {
        [self setNumTop10_40K_79999s:[parameters valueForKey:@"NumTop10_40K_79999"]];
        [self setNumTop10_80K_119999s:[parameters valueForKey:@"NumTop10_80K_119999"]];
        [self setNumTop10_350K_Pluss:[parameters valueForKey:@"NumTop10_350K_Plus"]];
        [self setNumTop10_300K_349999s:[parameters valueForKey:@"NumTop10_300K_349999"]];
        [self setNumTop10_250K_299999s:[parameters valueForKey:@"NumTop10_250K_299999"]];
        [self setNumTop10_200K_249999s:[parameters valueForKey:@"NumTop10_200K_249999"]];
        [self setNumTop10_1_39999s:[parameters valueForKey:@"NumTop10_40K_79999"]];
        [self setNumTop10_160K_199999s:[parameters valueForKey:@"NumTop10_160K_199999"]];
        [self setNumTop10_120K_159999s:[parameters valueForKey:@"NumTop10_120K_159999"]];
        [self setNumTop10_1_39999s:[parameters valueForKey:@"NumTop10_1_39999"]];
        [self setTotalCompensationOrganizations:[parameters valueForKey:@"TotalCompensationOrganization"]];
        [self setTotalCompensationPartTimeEmployee:[parameters valueForKey:@"TotalCompensationPartTimeEmployees"]];
        
        self = [self initWithParameters:error];
        
    }
    
    return self;
}

-(void)setNumTop10_1_39999s:(NSString *)value{
    _NumTop10_1_39999 = [value intValue];
}

-(void)setNumTop10_40K_79999s:(NSString *)value{
    _NumTop10_40K_79999 = [value intValue];
}

-(void)setNumTop10_80K_119999s:(NSString *)value{
    _NumTop10_80K_119999 = [value intValue];
}

-(void)setNumTop10_120K_159999s:(NSString *)value{
    _NumTop10_120K_159999 = [value intValue];
}

-(void)setNumTop10_160K_199999s:(NSString *)value{
    _NumTop10_160K_199999 = [value intValue];
}

-(void)setNumTop10_200K_249999s:(NSString *)value{
    _NumTop10_200K_249999 = [value intValue];
}

-(void)setNumTop10_250K_299999s:(NSString *)value{
    _NumTop10_250K_299999 = [value intValue];
}

-(void)setNumTop10_300K_349999s:(NSString *)value{
    _NumTop10_300K_349999 = [value intValue];
}

-(void)setNumTop10_350K_Pluss:(NSString *)value{
    _NumTop10_350K_Plus = [value intValue];
}

-(void)setTotalCompensationPartTimeEmployee:(NSString *)value{
    _TotalCompensationPartTimeEmployees= [value intValue];
}

-(void)setTotalCompensationOrganizations:(NSString *)value{
    _TotalCompensationOrganization= [value intValue];
}

@end