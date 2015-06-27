//
//  AddCarViewController.h
//  WashCar
//
//  Created by niuxinghua on 15/6/11.
//  Copyright (c) 2015年 Hjojo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SendBack.h"
@interface AddCarViewController : UIViewController<UIActionSheetDelegate,UIImagePickerControllerDelegate,UINavigationControllerDelegate,SendBack>
@property(nonatomic,strong)UIButton* pickImageBtn;
@property(nonatomic,strong)NSData* imageData;
@property(nonatomic,strong)UILabel* colorLable;
@property(nonatomic,strong)UILabel* bandNumLable;
@property(nonatomic,strong)UILabel* bandLable;
@property(nonatomic,strong)UIButton* confirmBtn;
@end
