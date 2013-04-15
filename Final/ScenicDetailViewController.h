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
@interface ScenicDetailViewController : UIViewController<UIGestureRecognizerDelegate>

//景点子类名称
@property (strong, nonatomic) IBOutlet UILabel *scenicSubName;
//最底层的scrollView
@property (strong, nonatomic) IBOutlet UIScrollView *baseScrollView;
//手势触发
@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *tapGesture;
@property (strong, nonatomic) IBOutletCollection(UIImageView) NSArray *imageViews;
@property (strong, nonatomic) IBOutlet APScrollView *imagesScrollView;

//各个字段的名称
@property (strong, nonatomic) ScenicDetailBase *base;
@end
