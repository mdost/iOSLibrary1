//
//  ProvState.m
//  TestingParserLibrary
//
//  Created by Mariam Dost on 2015-06-02.
//  Copyright (c) 2015 Mariam Dost. All rights reserved.
//

#import "ProvState.h"

@implementation ProvState

-(instancetype)initWithParameters:(NSDictionary *)parameters :(NSDictionary*)error{
    self = [super init];
    
    if(self){
        _text = parameters[@"#text"];
        _id = parameters[@"@id"];
        self = [self initWithParameters:error];
    }
    
    return self;
}

@end
