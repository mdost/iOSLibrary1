//
//  CharityFiles.h
//  ParseDataAPI
//
//  Created by Mariam Dost on 2015-06-02.
//  Copyright (c) 2015 Mariam Dost. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CharityFiles : NSObject

@property int ID;
@property NSString * Name;
@property NSString * Description;
@property NSString * FileDate;
@property NSString * Type;

-(void)setID:(NSString *)value;
-(instancetype)initWithParameters:(NSDictionary *)parameters;

@end
