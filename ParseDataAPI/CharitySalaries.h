//
//  CharitySalaries.h
//  ParseDataAPI
//
//  Created by Mariam Dost on 2015-05-27.
//  Copyright (c) 2015 Mariam Dost. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface CharitySalaries: NSObject

@property int NumTop10_1_39999;
@property int NumTop10_40K_79999;
@property int NumTop10_80K_119999;
@property int NumTop10_120K_159999;
@property int NumTop10_160K_199999;
@property int NumTop10_200K_249999;
@property int NumTop10_250K_299999;
@property int NumTop10_300K_349999;
@property int NumTop10_350K_Plus;
@property int TotalCompensationPartTimeEmployees;
@property int TotalCompensationOrganization;

-(void)setNumTop10_1_39999:(NSString *)value;
-(void)setNumTop10_40K_79999:(NSString *)value;
-(void)setNumTop10_80K_119999:(NSString *)value;
-(void)setNumTop10_120K_159999:(NSString *)value;
-(void)setNumTop10_160K_199999:(NSString *)value;
-(void)setNumTop10_200K_249999:(NSString *)value;
-(void)setNumTop10_250K_299999:(NSString *)value;
-(void)setNumTop10_300K_349999:(NSString *)value;
-(void)setNumTop10_350K_Plus:(NSString *)value;
-(void)setTotalCompensationPartTimeEmployees:(NSString *)value;
-(void)setTotalCompensationOrganization:(NSString *)value;



@end