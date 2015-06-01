//
//  CharityProject.h
//  ParseDataAPI
//
//  Created by Mariam Dost on 2015-05-29.
//  Copyright (c) 2015 Mariam Dost. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CharityProject : NSObject

@property (nonatomic) NSDate *DateModified;
@property NSString *ProjectName;
@property (nonatomic) int VolHours;
@property (nonatomic) double StaffSal;
@property (nonatomic) double MaterialCost;
@property (nonatomic) double Overhead;
@property (nonatomic) double OtherCosts;

-(void)setDateModified:(NSString *)DateModified;
-(void)setVolHours:(NSString *)VolHours;
-(void)setStaffSal:(NSString *)StaffSal;
-(void)setMaterialCost:(NSString *)MaterialCost;
-(void)setOverhead:(NSString *)Overhead;
-(void)setOtherCosts:(NSString *)OtherCosts;

@end
