//
//  AddCarViewController.m
//  WashCar
//
//  Created by niuxinghua on 15/6/11.
//  Copyright (c) 2015年 Hjojo. All rights reserved.
//

#import "AddCarViewController.h"
#import <MobileCoreServices/MobileCoreServices.h>
#import "SqureView.h"
#import "SqureViewTop.h"
#import "ChooseBandViewController.h"
#import "ChooseColorViewController.h"
#import "ChooseSerialViewController.h"
@interface AddCarViewController ()

@end

@implementation AddCarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGFloat mainwith=[UIScreen mainScreen].bounds.size.width;
    CGFloat mainheight=[UIScreen mainScreen].bounds.size.height;

    UIScrollView* back=[[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, mainwith, mainheight)];
    back.contentSize=CGSizeMake(mainwith, mainheight+100);
    [self.view addSubview:back];
    // Do any additional setup after loading the view.
    self.title=@"添加车辆";
    back.backgroundColor=[UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1.0];
      //白色框
    UIView* viewBack=[[UIView alloc]initWithFrame:CGRectMake(0, 0, mainwith, 140)];
    viewBack.backgroundColor=[UIColor whiteColor];
    [back addSubview:viewBack];
    //添加点击按钮
    
    _pickImageBtn=[[UIButton alloc]initWithFrame:CGRectMake(0, 0, 80, 80)];
   
   // _pickImageBtn.backgroundColor=[UIColor blackColor];
    [_pickImageBtn setImage:[UIImage imageNamed:@"pickImage.png"] forState:UIControlStateNormal];
    
   [ _pickImageBtn addTarget:self action:@selector(pick) forControlEvents:UIControlEventTouchUpInside];
    [back addSubview:_pickImageBtn];
     _pickImageBtn.center=CGPointMake(self.view.center.x, 60);
    //描述文字
    UILabel* lable=[[UILabel alloc]initWithFrame:CGRectMake(0, 0, 200, 30)];
    lable.textAlignment=UITextAlignmentCenter;
    lable.text=@"点击添加车辆照片";
    lable.textColor=[UIColor grayColor];
    [back addSubview:lable];
     lable.center=CGPointMake(self.view.center.x, _pickImageBtn.center.y+40+15);
   // _pickImageBtn setImage:<#(UIImage *)#> forState:<#(UIControlState)#>]
    
    
    
    
    //中间的方框
   // UIImage* image=[UIImage imageNamed:@"icon_form_arrow.png"];
    SqureView* first=[[SqureView alloc]initWithFrame:CGRectMake(20, 160, mainwith-40, 60)];
    [back addSubview:first];
    UIImageView* image1=[[UIImageView alloc]initWithFrame:CGRectMake(20, 23, 20, 14)];
    image1.image=[UIImage imageNamed:@"carNum.png"];
    [first addSubview:image1];
    UILabel* lable1=[[UILabel alloc]initWithFrame:CGRectMake(50, 10, 70, 40)];
    lable1.text=@"车牌号:";
    lable1.textColor=[UIColor grayColor];
    [first addSubview:lable1];
    _bandNumLable=[[UILabel alloc]initWithFrame:CGRectMake(130, 10, 120, 40)];
    _bandNumLable.text=@"鲁B8888";
    [first addSubview:_bandNumLable];
    
    
    
    SqureViewTop* second=[[SqureViewTop alloc]initWithFrame:CGRectMake(20, 220, mainwith-40, 60)];
    [second addTarget:self action:@selector(chooseBand) forControlEvents:UIControlEventTouchUpInside];
    [back addSubview:second];
    UIImageView* image2=[[UIImageView alloc]initWithFrame:CGRectMake(20, 20, 20, 20)];
    image2.image=[UIImage imageNamed:@"carBrand.png"];
    [second addSubview:image2];
    
    
    UILabel* lable2=[[UILabel alloc]initWithFrame:CGRectMake(50, 10, 70, 40)];
    lable2.text=@"车型:";
    lable2.textColor=[UIColor grayColor];
    [second addSubview:lable2];
    _bandLable=[[UILabel alloc]initWithFrame:CGRectMake(130, 10, 120, 40)];
    _bandLable.text=@"别克 商务型";
    [second addSubview:_bandLable];
    
    SqureViewTop* third=[[SqureViewTop alloc]initWithFrame:CGRectMake(20, 280, mainwith-40, 60)];
    [third addTarget:self action:@selector(pickColor) forControlEvents:UIControlEventTouchUpInside];
    [back addSubview:third];
    UIImageView* image3=[[UIImageView alloc]initWithFrame:CGRectMake(20, 20, 20, 20)];
    image3.image=[UIImage imageNamed:@"color.png"];
    [third addSubview:image3];

    UILabel* lable3=[[UILabel alloc]initWithFrame:CGRectMake(50, 10, 70, 40)];
    lable3.text=@"颜色:";
    lable3.textColor=[UIColor grayColor];
    _colorLable=[[UILabel alloc]initWithFrame:CGRectMake(130, 10, 120, 40)];
    [third addSubview:lable3];
    [third addSubview:_colorLable];

    
    //提交
    _confirmBtn=[[UIButton alloc]initWithFrame:CGRectMake(20, 360, mainwith-40, 40)];
    [_confirmBtn setTitle:@"确认" forState:UIControlStateNormal];
    [_confirmBtn setBackgroundColor:[UIColor colorWithRed:253/255.0 green:134/255.0 blue:11/255.0 alpha:1.0]];
    [back addSubview:_confirmBtn];

    
    
   }
-(void)pickColor{
    ChooseColorViewController* band=[ChooseColorViewController new];
    band.delegate=self;
    UIBarButtonItem *returnButtonItem = [[UIBarButtonItem alloc] init];
    returnButtonItem.title = @"";
    returnButtonItem.tintColor=[UIColor redColor];
    self.navigationItem.backBarButtonItem = returnButtonItem;
    [self.navigationController pushViewController:band animated:NO];
}
-(void)chooseBand{
    ChooseBandViewController* band=[ChooseBandViewController new];
    UIBarButtonItem *returnButtonItem = [[UIBarButtonItem alloc] init];
    returnButtonItem.title = @"";
    returnButtonItem.tintColor=[UIColor redColor];
    self.navigationItem.backBarButtonItem = returnButtonItem;
    [self.navigationController pushViewController:band animated:NO];
}
-(void)colorBack:(NSString *)color{
    _colorLable.text=color;
}
-(void)chooseSerial{
   // ChooseSerialViewController* serial=[ChooseSerialViewController new];
   // [self.navigationController pushViewController:serial animated:NO];
}
-(void)SerialBack:(NSString *)serial{
    _bandLable.text=serial;
}
-(void)pick{
    UIActionSheet* actionSheet = [[UIActionSheet alloc]
                                  initWithTitle:@"选择图像来源"
                                  delegate:self
                                  cancelButtonTitle:@"取消"
                                  destructiveButtonTitle:nil
                                  otherButtonTitles:@"照相机",@"本地相簿",nil];
   
    [actionSheet showInView:self.view];
}
#pragma mark -
#pragma UIActionSheet Delegate
- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    // NSLog(@"buttonIndex = [%d]",buttonIndex);
    switch (buttonIndex) {
        case 0://照相机
        {
            UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
            imagePicker.delegate = self;
            imagePicker.allowsEditing = YES;
            imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
            //            [self presentModalViewController:imagePicker animated:YES];
            [self presentViewController:imagePicker animated:YES completion:nil];
        }
            break;
            
        case 1://本地相簿
        {
            UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
            imagePicker.delegate = self;
            imagePicker.allowsEditing = YES;
            imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
            //            [self presentModalViewController:imagePicker animated:YES];
            [self presentViewController:imagePicker animated:YES completion:nil];
        }
            break;
        default:
            break;
    }
}

#pragma mark -
#pragma UIImagePickerController Delegate
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    if ([[info objectForKey:UIImagePickerControllerMediaType] isEqualToString:(__bridge NSString *)kUTTypeImage]) {
        UIImage *img = [info objectForKey:UIImagePickerControllerEditedImage];
        [self performSelector:@selector(saveImage:)  withObject:img afterDelay:0.5];
    }
    [picker dismissViewControllerAnimated:YES completion:nil];
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    
    [picker dismissViewControllerAnimated:YES completion:nil];
}

- (void)saveImage:(UIImage *)image {
    [_pickImageBtn setImage:image forState:UIControlStateNormal];
  
    if (UIImagePNGRepresentation(image) == nil) {
        
        _imageData = UIImageJPEGRepresentation(image, 1);
        
    } else {
        
        _imageData = UIImagePNGRepresentation(image);
    }
   }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
