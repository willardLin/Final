//
//  ScenicDetailViewController.h
//  Final
//
//  Created by 林志利 on 13-4-12.
//  Copyright (c) 2013年 林志利. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ScenicDetailWords.h"
#import "ScenicDetailBase.h"
#import "APScrollView.h"
@interface ScenicDetailViewController : UIViewController<UIGestureRecognizerDelegate,UIScrollViewDelegate>

@property (strong, nonatomic) IBOutlet UISegmentedControl *scenicSubName;

//最底层的scrollView
@property (strong, nonatomic) IBOutlet UIScrollView *baseScrollView;
//手势触发
@property (strong, nonatomic)  IBOutlet UITapGestureRecognizer *tapGesture;
//视图滚动
@property (strong, nonatomic) IBOutlet UIScrollView *imagesScrollView;

//三张图片
@property (strong, nonatomic) IBOutlet UIImageView *imageView1;
@property (strong, nonatomic) IBOutlet UIImageView *imageView2;
@property (strong, nonatomic) IBOutlet UIImageView *imageView3;

//图片page控制器
@property (strong, nonatomic) IBOutlet UIPageControl *pageControl;
//大的scrollView的page控制器
@property (strong, nonatomic) UIPageControl *basePageControl;
//当前页面的数字
@property (strong, nonatomic) NSNumber *pageNumber;

//@property (strong, nonatomic) UIView *view;
//各个字段的名称
@property (strong, nonatomic) ScenicDetailBase *base;

//开放时间
@property (strong, nonatomic) IBOutlet UILabel *openTimeLabel;
//价格
@property (strong, nonatomic) IBOutlet UILabel *priceLabel;
//地址
@property (strong, nonatomic) IBOutlet UILabel *addressLabel;
//简介
@property (strong, nonatomic) IBOutlet UILabel *descriptionLabel;
//公交
@property (strong, nonatomic) IBOutlet UILabel *leftBusLabel;
@property (strong, nonatomic) IBOutlet UILabel *rightBusLabel;

//下划线
@property (strong, nonatomic) IBOutlet UIImageView *descriptionImageView;
@property (strong, nonatomic) IBOutlet UIImageView *busImageView;


//当前子景点
@property (strong,nonatomic)  NSString *currentScenicSubImage;

//子景点对应的情况
- (IBAction)scenicSubNameDidChanged:(id)sender;
@end
