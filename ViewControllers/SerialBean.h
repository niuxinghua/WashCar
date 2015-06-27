//
//  SerialBean.h
//  WashCar
//
//  Created by niuxinghua on 15/6/12.
//  Copyright (c) 2015年 Hjojo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SerialBean : NSObject
//"yvbm_model" = "\U8dd1\U8f66";
//"yvbm_name" = TT;
//"yvbm_sort" = 255;
//"yvbm_tid" = 1;
//"yvbm_yvbtid" = 1;
@property(nonatomic,strong)NSString* yvbm_model;
@property(nonatomic,strong)NSString* yvbm_name;
@property(nonatomic,assign)int yvbm_sort;
@property(nonatomic,assign)int yvbm_tid;
@property(nonatomic,assign)int yvbm_yvbtid;
@end
