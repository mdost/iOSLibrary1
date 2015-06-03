//
//  CharityFiles.m
//  ParseDataAPI
//
//  Created by Mariam Dost on 2015-06-02.
//  Copyright (c) 2015 Mariam Dost. All rights reserved.
//

#import "CharityFiles.h"

@implementation CharityFiles

-(instancetype)initWithParameters:(NSDictionary *)parameters :(NSDictionary*)error{
    self = [super init];
    
    if(self){
        [self setID:parameters[@"ID"]];
        _Name = parameters[@"Name"];
        _Description = parameters[@"Description"];
        _Type = parameters[@"Type"];
        _FileDate = parameters[@"FileDate"];
        self=[self initWithParameters:error];
    }
    
    return self;
}

-(void)setID:(NSString *)value{
    _ID = [value intValue];
}


@end
