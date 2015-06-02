//
//  FinancialDetails.h
//  ParseDataAPI
//
//  Created by Mariam Dost on 2015-06-02.
//  Copyright (c) 2015 Mariam Dost. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FinancialDetails : NSObject

@property NSString * FiscalYear;
@property double PrimaryRevenue;
@property double GiftsNoReceipts;
@property double RevGovernment;
@property double OtherRevenue;
@property double TotalRevenue;
@property double ExpCharitablePrograms;
@property double ExpFundarising;
@property double ExpMgmtAdmin;
@property double ExpTotal;
@property double ProfitLoss;
@property double Cash;
@property double LTI;
@property double OtherAssets;
@property double TotalAssets;
@property double AcctsPayable;
@property double DefRevenue;
@property double OtherLiabilities;
@property double TotalLiabilities;

-(instancetype)initWithParameters:(NSDictionary *)parameters;
-(void)setPrimaryRevenues:(NSString*)PrimaryRevenue;
-(void)setGiftsNoReceipt:(NSString*)GiftsNoReceipts;
-(void)setRevGovernments:(NSString*)RevGovernment;
-(void)setOtherRevenues:(NSString*)OtherRevenue;
-(void)setTotalRevenues:(NSString*)TotalRevenue;
-(void)setExpCharitableProgram:(NSString*)ExpCharitablePrograms;
-(void)setExpFundarisings:(NSString*)ExpFundarising;
-(void)setExpMgmtAdmins:(NSString*)ExpMgmtAdmin;
-(void)setExpTotals:(NSString*)ExpTotal;
-(void)setProfitLosses:(NSString*)ProfitLoss;
-(void)setCashs:(NSString*)Cash;
-(void)setLTIs:(NSString*)LTI;
-(void)setOtherAsset:(NSString*)OtherAssets;
-(void)setTotalAsset:(NSString*)TotalAssets;
-(void)setTotalLiabilitie:(NSString*)TotalLiabilities;
-(void)setAcctsPayables:(NSString*)AcctsPayable;
-(void)setDefRevenues:(NSString*)DefRevenue;
-(void)setOtherLiabilitie:(NSString*)OtherLiabilities;


@end
