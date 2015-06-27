//
//  SqureViewTop.m
//  MusicLoveTeacher
//
//  Created by niuxinghua on 15/5/30.
//  Copyright (c) 2015年 Hjojo. All rights reserved.
//

#import "SqureViewTop.h"

@implementation SqureViewTop

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(id)initWithFrame:(CGRect)frame{
    self=[super initWithFrame:frame];
    if (self) {
       
        UIImageView* leftline=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 1, frame.size.height)];
        leftline.backgroundColor=[UIColor colorWithRed:188/255.0 green:188/255.0 blue:188/255.0 alpha:1.0];        [self addSubview:leftline];
        UIImageView* rightline=[[UIImageView alloc]initWithFrame:CGRectMake(frame.size.width-1, 0, 1, frame.size.height)];
        rightline.backgroundColor=[UIColor colorWithRed:188/255.0 green:188/255.0 blue:188/255.0 alpha:1.0];
        [self addSubview:rightline];
        
        UIImageView* bottomline=[[UIImageView alloc]initWithFrame:CGRectMake(0, frame.size.height-1, frame.size.width, 1)];
        bottomline.backgroundColor=[UIColor colorWithRed:188/255.0 green:188/255.0 blue:188/255.0 alpha:1.0];
        [self addSubview:bottomline];
        UIImage* image=[UIImage imageNamed:@"icon_form.png"];
        UIImageView* imageView=[[UIImageView alloc] initWithFrame:CGRectMake(frame.size.width-20, frame.size.height/2-10, 20, 20)];
        imageView.image=image;
       
        //imageView.center=CGPointMake(self.center.x+self.bounds.size.width/2-imageView.bounds.size.width/2, self.center.y);
         [self addSubview:imageView];
        
        
    }
    self.backgroundColor=[UIColor whiteColor];
    return self;
}


@end
