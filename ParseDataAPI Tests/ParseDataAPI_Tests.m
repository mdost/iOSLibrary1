//
//  ParseDataAPI_Tests.m
//  ParseDataAPI Tests
//
//  Created by Mariam Dost on 2015-05-27.
//  Copyright (c) 2015 Mariam Dost. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <XCTest/XCTest.h>
#import "ParseDataAPI.h"

@interface ParseDataAPI_Tests : XCTestCase

@end

@implementation ParseDataAPI_Tests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    XCTAssert(YES, @"Pass");
    NSString *token = @"058de645-08cf-49af-b77e-59c5467fbb4b";
    NSString *regNum = @"136747276RR0001";
    
    ParseDataAPI *parser= [[ParseDataAPI alloc] init];
    CharitySalaries *cs = [parser getCharitySalaries:token :regNum]
    NSLog("hello");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
