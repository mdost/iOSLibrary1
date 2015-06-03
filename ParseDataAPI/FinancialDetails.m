//
//  FinancialDetails.m
//  ParseDataAPI
//
//  Created by Mariam Dost on 2015-06-02.
//  Copyright (c) 2015 Mariam Dost. All rights reserved.
//

#import "FinancialDetails.h"

@implementation FinancialDetails

-(instancetype)initWithParameters:(NSDictionary *)parameters :(NSDictionary*)error{
    self = [super init];
    
    if(self){
        _FiscalYear=parameters[@"FiscalYear"];
        [self setPrimaryRevenues:parameters[@"PrimaryRevenue"]];
        [self setGiftsNoReceipt:parameters[@"GiftsNoReceipts"]];
        [self setRevGovernments:parameters[@"RevGovernment"]];
        [self setOtherRevenues:parameters[@"OtherRevenue"]];
        [self setProfitLosses:parameters[@"ProfitLoss"]];
        [self setOtherLiabilitie:parameters[@"OtherLiabilities"]];
        [self setOtherAsset:parameters[@"OtherAssets"]];
        [self setTotalLiabilitie:parameters[@"TotalLiabilities"]];
        [self setTotalRevenues:parameters[@"TotalRevenue"]];
        [self setExpTotals:parameters[@"ExpTotal"]];
        [self setExpMgmtAdmins:parameters[@"ExpMgmtAdmin"]];
        [self setExpFundarisings:parameters[@"ExpFundarising"]];
        [self setExpCharitableProgram:parameters[@"ExpCharitablePrograms"]];
        [self setCashs:parameters[@"Cash"]];
        [self setLTIs:parameters[@"LTI"]];
        [self setAcctsPayables:parameters[@"AcctsPayable"]];
        [self setDefRevenues:parameters[@"DefRevenue"]];
        [self setTotalAsset:parameters[@"TotalAssets"]];
        
        self =[self initWithParameters:error];
        
    }
    
    return self;
}

-(void)setPrimaryRevenues:(NSString*)PrimaryRevenue{
    _PrimaryRevenue = [PrimaryRevenue doubleValue];
}
-(void)setGiftsNoReceipt:(NSString*)GiftsNoReceipts{
    _GiftsNoReceipts = [GiftsNoReceipts doubleValue];
}
-(void)setRevGovernments:(NSString*)RevGovernment{
    _RevGovernment = [RevGovernment doubleValue];
}
-(void)setOtherRevenues:(NSString*)OtherRevenue{
    _OtherRevenue = [OtherRevenue doubleValue];
}
-(void)setTotalRevenues:(NSString*)TotalRevenue{
    _TotalRevenue = [TotalRevenue doubleValue];
}
-(void)setExpCharitableProgram:(NSString*)ExpCharitablePrograms{
    _ExpCharitablePrograms = [ExpCharitablePrograms doubleValue];
}
-(void)setExpFundarisings:(NSString*)ExpFundarising{
    _ExpFundarising = [ExpFundarising doubleValue];
}
-(void)setExpMgmtAdmins:(NSString*)ExpMgmtAdmin{
    _ExpMgmtAdmin = [ExpMgmtAdmin doubleValue];
}
-(void)setExpTotals:(NSString*)ExpTotal{
    _ExpTotal = [ExpTotal doubleValue];
}
-(void)setProfitLosses:(NSString*)ProfitLoss{
    _ProfitLoss = [ProfitLoss doubleValue];
}
-(void)setCashs:(NSString*)Cash{
    _Cash = [Cash doubleValue];
}
-(void)setLTIs:(NSString*)LTI{
    _LTI = [LTI doubleValue];
}
-(void)setOtherAsset:(NSString*)OtherAssets{
    _OtherAssets = [OtherAssets doubleValue];
}
-(void)setTotalAsset:(NSString*)TotalAssets{
    _TotalAssets = [TotalAssets doubleValue];
}
-(void)setTotalLiabilitie:(NSString*)TotalLiabilities{
    _TotalLiabilities = [TotalLiabilities doubleValue];
}
-(void)setAcctsPayables:(NSString*)AcctsPayable{
    _AcctsPayable = [AcctsPayable doubleValue];
}
-(void)setDefRevenues:(NSString*)DefRevenue{
    _DefRevenue = [DefRevenue doubleValue];
}
-(void)setOtherLiabilitie:(NSString*)OtherLiabilities{
    _OtherLiabilities = [OtherLiabilities doubleValue];
}

@end
