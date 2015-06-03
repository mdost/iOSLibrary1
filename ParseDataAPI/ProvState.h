//
//  ProvState.h
//  TestingParserLibrary
//
//  Created by Mariam Dost on 2015-06-02.
//  Copyright (c) 2015 Mariam Dost. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GiveAPI.h"

@interface ProvState : GiveAPI

@property NSString *id;
@property NSString * text;

-(instancetype)initWithParameters:(NSDictionary *)parameters :(NSDictionary*)error;

@end
