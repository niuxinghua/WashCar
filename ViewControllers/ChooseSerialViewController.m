//
//  ChooseSerialViewController.m
//  WashCar
//
//  Created by niuxinghua on 15/6/12.
//  Copyright (c) 2015年 Hjojo. All rights reserved.
//

#import "ChooseSerialViewController.h"
#import "AFNetworking.h"
#import "Util.h"
#import "JsonUtil.h"
#import "SerialBean.h"
@interface ChooseSerialViewController ()

@end

@implementation ChooseSerialViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"选择车系";
    _dataList=[NSMutableArray new];
    // Do any additional setup after loading the view.
    CGFloat mainwith=[UIScreen mainScreen].bounds.size.width;
    CGFloat mainheight=[UIScreen mainScreen].bounds.size.height;
    _table=[[UITableView alloc]initWithFrame:CGRectMake(0, 0, mainwith, mainheight)];
    _table.dataSource=self;
    _table.delegate=self;
    _table.tableFooterView=[UIView new];
    [self.table registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    [self.view addSubview:_table];
    [self getData];
}
-(void)getData{
   //{"op":"vehiclebrandmodel","vbtid":"1","row":"0","size":"1","rnd":"323121321398","uid":1,"version":"1.0","system":"android","opdt":"yyyyMMddHHmmss"}
    AFHTTPRequestOperationManager* manager=[AFHTTPRequestOperationManager manager];
    NSDictionary* dic1=[NSDictionary dictionaryWithObjectsAndKeys:@"1",@"vbtid",@"0",@"row",@"1",@"size",@"vehiclebrandmodel",@"op",[Util random],@"rnd", @"1",@"uid",[Util system],@"system",[Util operationTime],@"opdt",[Util version],@"version",nil];
    NSDictionary* dic=[NSDictionary dictionaryWithObjectsAndKeys:[JsonUtil jsonStringWithDictionary:dic1],@"p",@"alert",@"alert",nil];
    NSLog(@"%@",dic);
    [manager POST:@"http://27.223.89.54:999/service/ServiceService.php" parameters:dic success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"%@",responseObject);
        NSArray* result=[responseObject valueForKey:@"result"];
        if ([result count]>0) {
            for (int i=0; i<[result count]; i++) {
                NSDictionary* dic=[result objectAtIndex:i];
                SerialBean* bean=[SerialBean new];
                bean.yvbm_model=[dic valueForKey:@"yvbm_model"];
                bean.yvbm_name=[dic valueForKey:@"yvbm_name"];
                bean.yvbm_sort=[[dic valueForKey:@"yvbm_sort"] intValue];
                bean.yvbm_tid=[[dic valueForKey:@"yvbm_tid"] intValue];
                bean.yvbm_yvbtid=[[dic valueForKey:@"yvbm_yvbtid"] intValue];

               // NSLog(@"%@",bean.d_value);
               // NSLog(@"%@",bean.d_key);
                [_dataList addObject:bean];
                
            }
            [_table reloadData];
            
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"%@",error);
    }];
    
}
#pragma mark 返回每组行数
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (_dataList==nil) {
        return 0;
    }
    else{
        return [_dataList count];
        
    }
}

#pragma mark返回每行的单元格
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    //NSIndexPath是一个结构体，记录了组和行信息
    // CGFloat mainwith=[UIScreen mainScreen].bounds.size.width;
    UITableViewCell* cell=[tableView dequeueReusableCellWithIdentifier:@"cell"];
    SerialBean* bean=[_dataList objectAtIndex:[indexPath row]];
    cell.textLabel.text=bean.yvbm_model;
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 60;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    SerialBean* bean=[_dataList objectAtIndex:[indexPath row]];
    UITableViewCell *thisCell = [tableView cellForRowAtIndexPath:indexPath];
    
    if (thisCell.accessoryType == UITableViewCellAccessoryNone) {
        thisCell.accessoryType = UITableViewCellAccessoryCheckmark;
        
    }else{
        thisCell.accessoryType = UITableViewCellAccessoryNone;
    }
    [self.delegate colorBack:bean.yvbm_model];
    [self.navigationController popViewControllerAnimated:NO];
    
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
