//
//  ViewController.m
//  BackgroundTextureSample
//
//  Created by 廣川政樹 on 2013/08/23.
//  Copyright (c) 2013年 Masaki Hirokawa. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    //背景画像(underPageBackgroundColor)配置
    [self setUnderPageBackgroundColor];
    
    //背景画像(scrollViewTexturedBackgroundColor)配置
    [self setScrollViewTexturedBackgroundColor];
}

- (void)setUnderPageBackgroundColor
{
    UIView *underPageBackgroundView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, VIEW_WIDTH, VIEW_HEIGHT)];
    
    //背景指定
    underPageBackgroundView.backgroundColor = [UIColor underPageBackgroundColor];
    
    //ラベル配置
    UILabel *backgroundCaption = [DCLabel roundRectLabel:CGRectMake(underPageBackgroundView.center.x - (LABEL_WIDTH / 2),
                                                                    underPageBackgroundView.center.y - (LABEL_HEIGHT / 2),
                                                                    LABEL_WIDTH, LABEL_HEIGHT)
                                                    text:@"[UIColor underPageBackgroundColor]"
                                                    font:[UIFont systemFontOfSize:12]
                                               textColor:[UIColor whiteColor] textAlignment:NSTextAlignmentCenter
                                         backgroundColor:[UIColor blackColor] cornerRadious:6];
    [underPageBackgroundView addSubview:backgroundCaption];
    
    [self.view addSubview:underPageBackgroundView];
}

- (void)setScrollViewTexturedBackgroundColor
{
    UIView *scrollViewTextureBackgroundView = [[UIView alloc] initWithFrame:CGRectMake(0, 240, 320, 240)];
    
    //背景指定
    scrollViewTextureBackgroundView.backgroundColor = [UIColor scrollViewTexturedBackgroundColor];
    
    //ラベル配置
    UILabel *backgroundCaption = [DCLabel roundRectLabel:CGRectMake(scrollViewTextureBackgroundView.center.x - (LABEL_WIDTH / 2),
                                                                    scrollViewTextureBackgroundView.center.y - (LABEL_HEIGHT / 2) - VIEW_HEIGHT,
                                                                    LABEL_WIDTH, LABEL_HEIGHT)
                                                    text:@"[UIColor scrollViewTexturedBackgroundColor]"
                                                    font:[UIFont systemFontOfSize:12]
                                               textColor:[UIColor whiteColor] textAlignment:NSTextAlignmentCenter
                                         backgroundColor:[UIColor blackColor] cornerRadious:6];
    [scrollViewTextureBackgroundView addSubview:backgroundCaption];
    
    [self.view addSubview:scrollViewTextureBackgroundView];
}

@end
