//
//  ColorBean.h
//  WashCar
//
//  Created by niuxinghua on 15/6/11.
//  Copyright (c) 2015年 Hjojo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ColorBean : NSObject
//"d_key" = "\U9ed1";
//"d_tid" = 32;
//"d_value" = "\U9ed1";
@property(nonatomic,strong)NSString* d_key;
@property(nonatomic,assign)int d_tid;
@property(nonatomic,strong)NSString* d_value;
@end
