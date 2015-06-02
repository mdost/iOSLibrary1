//
//  CharityDetails.m
//  ParseDataAPI
//
//  Created by Mariam Dost on 2015-06-02.
//  Copyright (c) 2015 Mariam Dost. All rights reserved.
//

#import "CharityDetails.h"

@implementation CharityDetails

-(instancetype)initWithParameters:(NSDictionary *)parameters{
    self = [super init];
    
    if (self) {
        _CharitableStatus = [parameters valueForKey:@"CharitableStatus"];
        _CharityAddress=[parameters valueForKey:@"CharityAddress"];
        _CharityCity=[parameters valueForKey:@"CharityCity"];
        _CharityCountry= [parameters valueForKey:@"CharityCountry"];
        _CharityEmail=[parameters valueForKey:@"CharityEmail"];
        _CharityFax=[parameters valueForKey:@"CharityFax"];
        _CharityIntelligenceURL=[parameters valueForKey:@"CharityIntelligenceURL"];
        _CharityName=[parameters valueForKey:@"CharityName"];
        _CharityOppName=[parameters valueForKey:@"CharityOppName"];
        _CharityPhone1=[parameters valueForKey:@"CharityPhone1"];
        _CharityPhone2=[parameters valueForKey:@"CharityPhone2"];
        _CharityPostalCode=[parameters valueForKey:@"CharityPostalCode"];
        _CharityProvState=[parameters valueForKey:@"CharityProvState"];
        _CharitySize=[parameters valueForKey:@"CharitySize"];
        _CharitySubType=[parameters valueForKey:@"CharitySubType"];
        _CharityType=[parameters valueForKey:@"CharityType"];
        _CharityUrl=[parameters valueForKey:@"CharityUrl"];
        _Comments=[parameters valueForKey:@"Comments"];
        _Competitors=[parameters valueForKey:@"Competitors"];
        _DateOfStatus=[parameters valueForKey:@"DateOfStatus"];
        _MajorDonors=[parameters valueForKey:@"MajorDonors"];
        _MissionStatement=[parameters valueForKey:@"MissionStatement"];
        _UniqueBlurb=[parameters valueForKey:@"UniqueBlurb"];
        _EmerFundDescrip=[parameters valueForKey:@"EmerFundDescrip"];
        _ExecutiveDirector=[parameters valueForKey:@"ExecutiveDirector"];
        _ExistBlurb=[parameters valueForKey:@"ExistBlurb"];
        _WhatIsNeeded=[parameters valueForKey:@"WhatIsNeeded"];
        _Notes=[parameters valueForKey:@"Notes"];
        _NumOfStaff=[parameters valueForKey:@"NumOfStaff"];
        _Description=[parameters valueForKey:@"Description"];
        _NumOfVolunteers=[parameters valueForKey:@"NumOfVolunteers"];
        _OfferingsDifferedDescrip=[parameters valueForKey:@"OfferingsDifferedDescrip"];
        _OperatingBudgetYear1=[parameters valueForKey:@"OperatingBudgetYear1"];
        _OperatingBudgetYear2=[parameters valueForKey:@"OperatingBudgetYear2"];
        _OperatingBudgetYear3=[parameters valueForKey:@"OperatingBudgetYear3"];
        _OrganizationSize=[parameters valueForKey:@"OrganizationSize"];
        _OverheadExpensesDescription=[parameters valueForKey:@"OverheadExpensesDescription"];
        _OverheadExpensesPercent=[parameters valueForKey:@"OverheadExpensesPercent"];
        _PeopleImpactedByOrganization=[parameters valueForKey:@"PeopleImpactedByOrganization"];
        _PeopleImpactedByPrograms=[parameters valueForKey:@"PeopleImpactedByPrograms"];
        _PublicPerception=[parameters valueForKey:@"PublicPerception"];
        _PressReleases=[parameters valueForKey:@"PressReleases"];
        _ProcessDescrip=[parameters valueForKey:@"ProcessDescrip"];
        _ProgramDescription=[parameters valueForKey:@"ProgramDescription"];
        _KeyIssuesDescrip=[parameters valueForKey:@"KeyIssuesDescrip"];
        _KeyIssuesPercent=[parameters valueForKey:@"KeyIssuesPercent"];
        _Keywords=[parameters valueForKey:@"Keywords"];
        _LogoFilename=[parameters valueForKey:@"LogoFilename"];
        _HasCodeOfEthicalFundraising=[parameters valueForKey:@"HasCodeOfEthicalFundraising"];
        _HowOfferingsDiffered=[parameters valueForKey:@"HowOfferingsDiffered"];
        _IndividualPrograms=[parameters valueForKey:@"IndividualPrograms"];
        _InKindDonDescrip=[parameters valueForKey:@"InKindDonDescrip"];
        
        [self setTrueCharityValues:[parameters valueForKey:@"TrueCharityValue"]];
        [self setCodeOfFundraisings:[parameters valueForKey:@"CodeOfFundraising"]];
        [self setCostOfFundraisings:[parameters valueForKey:@"CostOfFundraising"]];
        [self setHasDonorBillOfRightss:[parameters valueForKey:@"HasDonorBillOfRights"]];
        [self setHasCodeOfEthicalFundraisings:[parameters valueForKey:@"HasCodeOfEthicalFundraising"]];
        [self setHaveBoardGovMans:[parameters valueForKey:@"HaveBoardGovMan"]];
        [self setNeedEmerFunds:[parameters valueForKey:@"NeedEmerFund"]];
        [self setHaveStrategicPlans:[parameters valueForKey:@"HaveStrategicPlan"]];
        [self setFundraisingCosts:[parameters valueForKey:@"FundraisingCost"]];
        [self setGrossFunds:[parameters valueForKey:@"GrossFund"]];
        [self setRealCharityValues:[parameters valueForKey:@"RealCharityValue"]];
        [self setUpdateStatuss:[parameters valueForKey:@"UpdateStatus"]];
        [self setDonorTypes:[parameters valueForKey:@"DonorType"]];
        [self setOperatingBudgets:[parameters valueForKey:@"OperatingBudget"]];
        [self setHaveProcesss:[parameters valueForKey:@"HaveProcess"]];
        
    }
    
    return self;
}

//setters
-(void)setTrueCharityValues:(NSString *)TrueCharityValue{
    _TrueCharityValue=[TrueCharityValue doubleValue];
}

-(void)setCodeOfFundraisings:(NSString *)CodeOfFundraising{
    if(CodeOfFundraising == (id)[NSNull null]){
        _CodeOfFundraising = nil;
    }else
        _CodeOfFundraising = [CodeOfFundraising boolValue];
}
-(void)setHasCodeOfEthicalFundraisings:(NSString *)HasCodeOfEthicalFundraising{
    if(HasCodeOfEthicalFundraising == (id)[NSNull null]){
        _HasCodeOfEthicalFundraising = nil;
    }else
        _HasCodeOfEthicalFundraising=[HasCodeOfEthicalFundraising boolValue];
}
-(void)setHasDonorBillOfRightss:(NSString *)HasDonorBillOfRights{
    if(HasDonorBillOfRights == (id)[NSNull null]){
        _HasDonorBillOfRights = nil;
    }else
        _HasDonorBillOfRights= [HasDonorBillOfRights boolValue];
}
-(void)setHaveBoardGovMans:(NSString *)HaveBoardGovMan{
    if(HaveBoardGovMan == (id)[NSNull null]){
        _HaveBoardGovMan = nil;
    }else
        _HaveBoardGovMan= [HaveBoardGovMan boolValue];
}
-(void)setHaveProcesss:(NSString *)HaveProcess{
    if(HaveProcess == (id)[NSNull null]){
        _HaveProcess = nil;
    }else
        _HaveProcess= [HaveProcess boolValue];
}
-(void)setHaveStrategicPlans:(NSString *)HaveStrategicPlan{
    if(HaveStrategicPlan == (id)[NSNull null]){
        _HaveStrategicPlan = nil;
    }else
        _HaveStrategicPlan=[HaveStrategicPlan boolValue];
}
-(void)setNeedEmerFunds:(NSString *)NeedEmerFund{
    if(NeedEmerFund == (id)[NSNull null]){
        _NeedEmerFund = nil;
    }else
        _NeedEmerFund = [NeedEmerFund boolValue];
}
-(void)setFundraisingCosts:(NSString *)FundraisingCost{
    _FundraisingCost =[FundraisingCost doubleValue];
}
-(void)setGrossFunds:(NSString *)GrossFund{
    _GrossFund = [GrossFund doubleValue];
}
-(void)setRealCharityValues:(NSString *)RealCharityValue{
    _RealCharityValue = [RealCharityValue doubleValue];
}
-(void)setCostOfFundraisings:(NSString *)CostOfFundraising{
    _CostOfFundraising = [CostOfFundraising doubleValue];
}
-(void)setUpdateStatuss:(NSString *)UpdateStatus{
    _UpdateStatus= [UpdateStatus intValue];
}
-(void)setDonorTypes:(NSString *)DonorType{
    _DonorType = [DonorType intValue];
}
-(void)setOperatingBudgets:(NSString *)OperatingBudget{
    _OperatingBudget=[OperatingBudget doubleValue];
}

@end
