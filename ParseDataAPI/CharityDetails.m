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
        
        
    }
    
    return self;
}

-(void)setTrueCharityValue:(NSString *)TrueCharityValue{
    
}

-(void)setCodeOfFundraising:(NSString *)CodeOfFundraising{
    
}
-(void)setHasCodeOfEthicalFundraising:(NSString *)HasCodeOfEthicalFundraising{
    
}
-(void)setHasDonorBillOfRights:(NSString *)HasDonorBillOfRights{
    
}
-(void)setHaveBoardGovMan:(NSString *)HaveBoardGovMan{
    
}
-(void)setHaveProcess:(NSString *)HaveProcess{
    
}
-(void)setHaveStrategicPlan:(NSString *)HaveStrategicPlan{
    
}
-(void)setNeedEmerFund:(NSString *)NeedEmerFund{
    
}
-(void)setFundraisingCost:(NSString *)FundraisingCost{
    
}
-(void)setGrossFund:(NSString *)GrossFund{
    
}
-(void)setRealCharityValue:(NSString *)RealCharityValue{
    
}
-(void)setCostOfFundraising:(NSString *)CostOfFundraising{
    
}
-(void)setUpdateStatus:(NSString *)UpdateStatus{
    
}
-(void)setDonorType:(NSString *)DonorType{
    
}
-(void)setOperatingBudget:(NSString *)OperatingBudget{
    
}

@end
