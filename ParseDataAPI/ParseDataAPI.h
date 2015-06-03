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
#import "FinancialDetails.h"
#import "SearchCharities.h"
#import "DonationURL.h"
#import "Info.h"

@interface ParseDataAPI : NSObject

-(NSData *)createConnection:(NSMutableString *)url;
-(NSString *)getToken:(NSString *)appid :(NSString *)appSecret;
-(CharitySalaries *)getCharitySalaries:(NSString*)token :(NSString*)regNum;
-(NSMutableArray *)getCharityType:(NSString *)token;
-(NSMutableArray *)getCharityProject:(NSString*)token :(NSString *)regNum;
-(NSMutableArray *)getProvState:(NSString *)token :(NSString *)country;
-(NSMutableArray *)getCharityFiles:(NSString *)token :(NSString *)regNum;
-(CharityDetails *)getCharityDetails:(NSString *)token :(NSString *)regNum;
-(NSMutableArray *)getFinancialDetails:(NSString *)token :(NSString *)regNum;
-(NSMutableArray *)searchCharities:(NSString *)token :(NSString *)pageNum :(NSString*)NumPerPage :(NSString*)charitySize :(NSString*)charityType :(NSString*)keyword :(NSString*)country :(NSString*)provState;
-(DonationURL*)getDonationURL:(NSString *)token :(Info *)obj;
-(BOOL)validateToken:(NSString *)token;

@end
