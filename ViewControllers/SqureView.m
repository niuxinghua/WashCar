//
//  SqureView.m
//  MusicLove
//
//  Created by niuxinghua on 15/3/29.
//  Copyright (c) 2015年 Hjojo. All rights reserved.
//

#import "SqureView.h"

@implementation SqureView

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
        UIImageView* topline=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, frame.size.width, 1)];
        topline.backgroundColor=[UIColor colorWithRed:188/255.0 green:188/255.0 blue:188/255.0 alpha:1.0];
        [self addSubview:topline];
        UIImageView* leftline=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 1, frame.size.height)];
        leftline.backgroundColor=[UIColor colorWithRed:188/255.0 green:188/255.0 blue:188/255.0 alpha:1.0];        [self addSubview:leftline];
        UIImageView* rightline=[[UIImageView alloc]initWithFrame:CGRectMake(frame.size.width-1, 0, 1, frame.size.height)];
        rightline.backgroundColor=[UIColor colorWithRed:188/255.0 green:188/255.0 blue:188/255.0 alpha:1.0];
        [self addSubview:rightline];
        
        UIImageView* bottomline=[[UIImageView alloc]initWithFrame:CGRectMake(0, frame.size.height-1, frame.size.width, 1)];
        bottomline.backgroundColor=[UIColor colorWithRed:188/255.0 green:188/255.0 blue:188/255.0 alpha:1.0];
        [self addSubview:bottomline];
        

        
    }
    self.backgroundColor=[UIColor whiteColor];
    return self;
}

@end
