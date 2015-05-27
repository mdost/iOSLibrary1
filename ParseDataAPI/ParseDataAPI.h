//
//  ParseDataAPI.h
//  ParseDataAPI
//
//  Created by Mariam Dost on 2015-05-26.
//  Copyright (c) 2015 Mariam Dost. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CharitySalaries.h"

@interface ParseDataAPI : NSObject

-(NSData *)createConnection:(NSString*)token :(NSString*)regNum;
-(CharitySalaries *)getCharitySalaries:(NSString*)token :(NSString*)regNum;


@end
