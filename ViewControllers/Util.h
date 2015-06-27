//
//  Util.h
//  WashCarC
//
//  Created by Sidney Zou on 15/6/7.
//  Copyright (c) 2015年 organization.name. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Util : NSObject

+ (NSString *)random;
+ (NSString *)version;
+ (NSString *)system;
+ (NSString *)operationTime;

+ (NSString *)fixServer;

+ (BOOL)jsonStatusIsOK:(NSDictionary *)jsonDictionary;
+ (NSString *)getResultFromJSONDictionary:(NSDictionary *)jsonDictionary;

@end
