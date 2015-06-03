//
//  GiveAPI.h
//  ParseDataAPI
//
//  Created by Mariam Dost on 2015-06-02.
//  Copyright (c) 2015 Mariam Dost. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GiveAPI : NSObject

@property int status_code;
@property NSString * status_code_description;

-(instancetype)initWithParameters:(NSDictionary *)parameters;
-(void)setStatus_codes:(NSString *)status_code;

@end
