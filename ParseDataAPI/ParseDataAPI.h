//
//  ParseDataAPI.h
//  ParseDataAPI
//
//  Created by Mariam Dost on 2015-05-26.
//  Copyright (c) 2015 Mariam Dost. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CharitySalaries.h"
#import "CharityProject.h"
#import "ProvState.h"
#import "CharityFiles.h"
#import "CharityDetails.h"

@interface ParseDataAPI : NSObject

-(NSData *)createConnection:(NSMutableString *)url;

-(CharitySalaries *)getCharitySalaries:(NSString*)token :(NSString*)regNum;
-(NSMutableArray *)getCharityType:(NSString *)token;
-(NSMutableArray *)getCharityProject:(NSString*)token :(NSString *)regNum;
-(NSMutableArray *)getProvState:(NSString *)token :(NSString *)country;
-(NSMutableArray *)getCharityFiles:(NSString *)token :(NSString *)regNum;
-(NSMutableArray *)getCharityDetails:(NSString *)token :(NSString *)regNum;

@end
