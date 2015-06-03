//
//  CharityDetails.h
//  ParseDataAPI
//
//  Created by Mariam Dost on 2015-06-02.
//  Copyright (c) 2015 Mariam Dost. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GiveAPI.h"

@interface CharityDetails : GiveAPI

@property NSString * CharityName;
@property NSString * CharityOppName;
@property NSString * CharityType;
@property NSString * CharitableStatus;
@property NSString * DateOfStatus;
@property NSString * MissionStatement;
@property NSString * NumOfStaff;
@property NSString * MajorDonors;
@property NSString * Competitors;
@property NSString * UniqueBlurb;
@property NSString * TotalNumPeopleImpacted;
@property NSString * ExistBlurb;
@property NSString * WhatIsNeeded;
@property NSString * Notes;
@property NSString * CharitySubType;
@property int UpdateStatus;
@property int DonorType;
@property NSString * OrganizationSize;
@property double OperatingBudget;
@property NSString * NumOfVolunteers;
@property NSString * LogoFilename;
@property NSString * Description;
@property NSString * IndividualPrograms;
@property NSString * OperatingBudgetYear1;
@property NSString * OperatingBudgetYear2;
@property NSString * OperatingBudgetYear3;
@property NSString * GovernancePolicies;
@property NSString * PeopleImpactedByOrganization;
@property NSString * PeopleImpactedByPrograms;
@property double TrueCharityValue;
@property NSString * RoleOfVolunteers;
@property NSString * VolunteerTurnoverRate;
@property NSString * PublicPerception;
@property NSString * Keywords;
@property double CostOfFundraising;
@property NSString * PressReleases;
@property NSString * CharitySize;
@property bool HasDonorBillOfRights;
@property bool HasCodeOfEthicalFundraising;
@property NSString * CharityIntelligenceURL;
@property double RealCharityValue;
@property NSString * CharityAddress;
@property NSString * CharityCity;
@property NSString * CharityProvState;
@property NSString * CharityPostalCode;
@property NSString * CharityCountry;
@property NSString * CharityEmail;
@property NSString * CharityUrl;
@property NSString * CharityPhone1;
@property NSString * CharityPhone2;
@property NSString * CharityFax;
@property NSString * ProgramDescription;
@property bool CodeOfFundraising;
@property NSString * KeyIssuesPercent;
@property NSString * KeyIssuesDescrip;
@property bool NeedEmerFund;
@property NSString * EmerFundDescrip;
@property bool HaveProcess;
@property NSString * ProcessDescrip;
@property NSString * RelatedDoc;
@property NSString * HowOfferingsDiffered;
@property NSString * OfferingsDifferedDescrip;
@property bool HaveStrategicPlan;
@property bool HaveBoardGovMan;
@property NSString * OverheadExpensesDescription;
@property NSString * OverheadExpensesPercent;
@property double FundraisingCost;
@property double GrossFund;
@property NSString * InKindDonDescrip;
@property NSString * Comments;
@property NSString * ExecutiveDirector;

-(void)setTrueCharityValues:(NSString *)TrueCharityValue;
-(void)setCodeOfFundraisings:(NSString *)CodeOfFundraising;
-(void)setHasCodeOfEthicalFundraisings:(NSString *)HasCodeOfEthicalFundraising;
-(void)setHasDonorBillOfRightss:(NSString *)HasDonorBillOfRights;
-(void)setHaveBoardGovMans:(NSString *)HaveBoardGovMan;
-(void)setHaveProcesss:(NSString *)HaveProcess;
-(void)setHaveStrategicPlans:(NSString *)HaveStrategicPlan;
-(void)setNeedEmerFunds:(NSString *)NeedEmerFund;
-(void)setFundraisingCosts:(NSString *)FundraisingCost;
-(void)setGrossFunds:(NSString *)GrossFund;
-(void)setRealCharityValues:(NSString *)RealCharityValue;
-(void)setCostOfFundraisings:(NSString *)CostOfFundraising;
-(void)setUpdateStatuss:(NSString *)UpdateStatus;
-(void)setDonorTypes:(NSString *)DonorType;
-(void)setOperatingBudgets:(NSString *)OperatingBudget;
-(instancetype)initWithParameters:(NSDictionary *)parameters :(NSDictionary*)error;

@end
