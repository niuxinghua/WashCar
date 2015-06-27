//
//  ChooseColorViewController.h
//  WashCar
//
//  Created by niuxinghua on 15/6/11.
//  Copyright (c) 2015年 Hjojo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SendBack.h"
@interface ChooseColorViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic,strong)UITableView* table;
@property(nonatomic,strong)NSMutableArray* dataList;
@property(weak,nonatomic)id<SendBack>delegate;
@end
