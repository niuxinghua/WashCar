//
//  ChooseBandViewController.h
//  WashCar
//
//  Created by niuxinghua on 15/6/11.
//  Copyright (c) 2015年 Hjojo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ChooseBandViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic,strong)UITableView* table;
@property(nonatomic,strong)NSMutableArray* dataList;

@end
