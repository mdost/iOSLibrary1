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
        _CharitableStatus = parameters[@"CharitableStatus"];
        _CharityAddress=parameters[@"CharityAddress"];
        _CharityCity=parameters[@"CharityCity"];
        _CharityCountry=parameters[@"CharityCountry"];
        _CharityEmail=parameters[@"CharityEmail"];
        _CharityFax=parameters[@"CharityFax"];
        _CharityIntelligenceURL=parameters[@"CharityIntelligenceURL"];
        _CharityName=parameters[@"CharityName"];
        _CharityOppName=parameters[@"CharityOppName"];
        _CharityPhone1=parameters[@"CharityPhone1"];
        _CharityPhone2=parameters[@"CharityPhone2"];
        _CharityPostalCode=parameters[@"CharityPostalCode"];
        _CharityProvState=parameters[@"CharityProvState"];
        _CharitySize=parameters[@"CharitySize"];
        _CharitySubType=parameters[@"CharitySubType"];
        _CharityType=parameters[@"CharityType"];
        _CharityUrl=parameters[@"CharityUrl"];
        _Comments=parameters[@"Comments"];
        _Competitors=parameters[@"Competitors"];
        _DateOfStatus=parameters[@"DateOfStatus"];
        _MajorDonors=parameters[@"MajorDonors"];
        _MissionStatement=parameters[@"MissionStatement"];
        _UniqueBlurb=parameters[@"UniqueBlurb"];
        _EmerFundDescrip=parameters[@"EmerFundDescrip"];
        _ExecutiveDirector=parameters[@"ExecutiveDirector"];
        _ExistBlurb=parameters[@"ExistBlurb"];
        _WhatIsNeeded=parameters[@"WhatIsNeeded"];
        _Notes=parameters[@"Notes"];
        _NumOfStaff=parameters[@"NumOfStaff"];
        _NumOfVolunteers=parameters[@"NumOfVolunteers"];
        _OfferingsDifferedDescrip=parameters[@"OfferingsDifferedDescrip"];
        _OperatingBudgetYear1=parameters[@"OperatingBudgetYear1"];
        _OperatingBudgetYear2=parameters[@"OperatingBudgetYear2"];
        _OperatingBudgetYear3=parameters[@"OperatingBudgetYear3"];
        _OrganizationSize=parameters[@"OrganizationSize"];
        _OverheadExpensesDescription=parameters[@"OverheadExpensesDescription"];
        _OverheadExpensesPercent=parameters[@"OverheadExpensesPercent"];
        _PeopleImpactedByOrganization=parameters[@"PeopleImpactedByOrganization"];
        _PeopleImpactedByPrograms=parameters[@"PeopleImpactedByPrograms"];
        _PublicPerception=parameters[@"PublicPerception"];
        _PressReleases=parameters[@"PressReleases"];
        _ProcessDescrip=parameters[@"ProcessDescrip"];
        _ProgramDescription=parameters[@"ProgramDescription"];
        _KeyIssuesDescrip=parameters[@"KeyIssuesDescrip"];
        _KeyIssuesPercent=parameters[@"KeyIssuesPercent"];
        _Keywords=parameters[@"Keywords"];
        _LogoFilename=parameters[@"LogoFilename"];
        _HasCodeOfEthicalFundraising=parameters[@"HasCodeOfEthicalFundraising"];
        _HowOfferingsDiffered=parameters[@"HowOfferingsDiffered"];
        _IndividualPrograms=parameters[@"IndividualPrograms"];
        _InKindDonDescrip=parameters[@"InKindDonDescrip"];
        
        [self setTrueCharityValues:parameters[@"TrueCharityValue"]];
        [self setCodeOfFundraisings:parameters[@"CodeOfFundraising"]];
        [self setCostOfFundraisings:parameters[@"CostOfFundraising"]];
        [self setHasDonorBillOfRightss:parameters[@"HasDonorBillOfRights"]];
        [self setHasCodeOfEthicalFundraisings:parameters[@"HasCodeOfEthicalFundraising"]];
        [self setHaveBoardGovMans:parameters[@"HaveBoardGovMan"]];
        [self setNeedEmerFunds:parameters[@"NeedEmerFund"]];
        [self setHaveStrategicPlans:parameters[@"HaveStrategicPlan"]];
        [self setFundraisingCosts:parameters[@"FundraisingCost"]];
        [self setGrossFunds:parameters[@"GrossFund"]];
        [self setRealCharityValues:parameters[@"RealCharityValue"]];
        [self setUpdateStatuss:parameters[@"UpdateStatus"]];
        [self setDonorTypes:parameters[@"DonorType"]];
        [self setOperatingBudgets:parameters[@"OperatingBudget"]];
        [self setHaveProcesss:parameters[@"HaveProcess"]];

    }
    
    return self;
}

//setters
-(void)setTrueCharityValues:(NSString *)TrueCharityValue{
    _TrueCharityValue=[TrueCharityValue doubleValue];
}

-(void)setCodeOfFundraisings:(NSString *)CodeOfFundraising{
    _CodeOfFundraising = [CodeOfFundraising boolValue];
}
-(void)setHasCodeOfEthicalFundraisings:(NSString *)HasCodeOfEthicalFundraising{
    _HasCodeOfEthicalFundraising=[HasCodeOfEthicalFundraising boolValue];
}
-(void)setHasDonorBillOfRightss:(NSString *)HasDonorBillOfRights{
    _HasDonorBillOfRights= [HasDonorBillOfRights boolValue];
}
-(void)setHaveBoardGovMans:(NSString *)HaveBoardGovMan{
    _HaveBoardGovMan= [HaveBoardGovMan boolValue];
}
-(void)setHaveProcesss:(NSString *)HaveProcess{
    _HaveProcess= [HaveProcess boolValue];
}
-(void)setHaveStrategicPlans:(NSString *)HaveStrategicPlan{
    _HaveStrategicPlan=[HaveStrategicPlan boolValue];
}
-(void)setNeedEmerFunds:(NSString *)NeedEmerFund{
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
