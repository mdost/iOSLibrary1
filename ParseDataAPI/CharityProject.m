//
//  CharityProject.m
//  ParseDataAPI
//
//  Created by Mariam Dost on 2015-05-29.
//  Copyright (c) 2015 Mariam Dost. All rights reserved.
//

#import "CharityProject.h"

@implementation CharityProject

-(instancetype)initWithParameters:(NSDictionary *)parameters :(NSDictionary*)error{
    self = [super init];
    
    if(self){
        _ProjectName = parameters[@"ProjectName"];
        _DateModified = parameters[@"DateModified"];
        [self setMaterialCost:parameters[@"MaterialCost"]];
        [self setVolHours:parameters[@"VolHours"]];
        [self setStaffSal:parameters[@"StaffSal"]];
        [self setOverhead:parameters[@"Overhead"]];
        [self setOtherCosts:parameters[@"OtherCosts"]];
        self = [self initWithParameters:error];
    }
    
    return self;
}

-(void)setDateModified:(NSString *)DateModified{
    
}

-(void)setVolHours:(NSString *)VolHours{
    int value = [VolHours intValue];
    _VolHours =value;
}

-(void)setStaffSal:(NSString *)StaffSal{
    double value = [StaffSal doubleValue];
    _StaffSal =value;
}

-(void)setOtherCosts:(NSString *)OtherCosts{
    double value = [OtherCosts doubleValue];
    _OtherCosts= value;
}

-(void)setMaterialCost:(NSString *)MaterialCost{
    double value = [MaterialCost doubleValue];
    _MaterialCost = value;
}

-(void)setOverhead:(NSString *)Overhead{
    double value = [Overhead doubleValue];
    _Overhead = value;
}


@end
