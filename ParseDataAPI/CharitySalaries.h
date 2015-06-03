//
//  CharitySalaries.h
//  ParseDataAPI
//
//  Created by Mariam Dost on 2015-05-27.
//  Copyright (c) 2015 Mariam Dost. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface CharitySalaries: NSObject

@property (nonatomic) int NumTop10_1_39999;
@property (nonatomic) int NumTop10_40K_79999;
@property (nonatomic) int NumTop10_80K_119999;
@property (nonatomic) int NumTop10_120K_159999;
@property (nonatomic) int NumTop10_160K_199999;
@property (nonatomic) int NumTop10_200K_249999;
@property (nonatomic) int NumTop10_250K_299999;
@property (nonatomic) int NumTop10_300K_349999;
@property (nonatomic) int NumTop10_350K_Plus;
@property (nonatomic) int TotalCompensationPartTimeEmployees;
@property (nonatomic) int TotalCompensationOrganization;

-(instancetype)initWithParameters:(NSDictionary *)parameters;
-(void)setNumTop10_1_39999s:(NSString *)value;
-(void)setNumTop10_40K_79999s:(NSString *)value;
-(void)setNumTop10_80K_119999s:(NSString *)value;
-(void)setNumTop10_120K_159999s:(NSString *)value;
-(void)setNumTop10_160K_199999s:(NSString *)value;
-(void)setNumTop10_200K_249999s:(NSString *)value;
-(void)setNumTop10_250K_299999s:(NSString *)value;
-(void)setNumTop10_300K_349999s:(NSString *)value;
-(void)setNumTop10_350K_Pluss:(NSString *)value;
-(void)setTotalCompensationPartTimeEmployee:(NSString *)value;
-(void)setTotalCompensationOrganizations:(NSString *)value;

@end