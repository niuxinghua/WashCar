//
//  Util.m
//  WashCarC
//
//  Created by Sidney Zou on 15/6/7.
//  Copyright (c) 2015年 organization.name. All rights reserved.
//

#import "Util.h"
#import <UIKit/UIKit.h>

@implementation Util

+ (NSString *)random {
  return [NSString stringWithFormat:@"%d", arc4random() % 10000];
}

+ (NSString *)version {
  NSDictionary *infoDictionary = [[NSBundle mainBundle] infoDictionary];
  return [infoDictionary objectForKey:@"CFBundleVersion"];
}

+ (NSString *)system {
  return @"iOS";
}

+ (NSString *)operationTime {
  NSDate *date = [NSDate date];
  NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
  formatter.dateFormat = @"yyyyMMddHHmmss";
  return [formatter stringFromDate:date];
}

+ (NSString *)fixServer {
  return @"http://27.223.89.54:999/service/ServiceService.php";
}

+ (BOOL)jsonStatusIsOK:(NSDictionary *)jsonDictionary {
  NSString *stausString = [NSString stringWithFormat:@"%d", [[jsonDictionary objectForKey:@"status"] integerValue]];
  if ([stausString isEqualToString:@"1"]) {
    return YES;
  }
  return NO;
}

+ (NSString *)getResultFromJSONDictionary:(NSDictionary *)jsonDictionary {
  return [jsonDictionary objectForKey:@"result"];
}

@end
