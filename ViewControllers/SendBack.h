//
//  SendBack.h
//  WashCar
//
//  Created by niuxinghua on 15/6/11.
//  Copyright (c) 2015年 Hjojo. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SendBack <NSObject>
-(void)colorBack:(NSString*)color;
-(void)SerialBack:(NSString*)serial;
@end
