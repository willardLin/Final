//
//  APScrollView.h
//  APExtendedScrollView
//
//  Created by Andrzej on 23.01.2013.
//  Copyright (c) 2013 apuczyk. All rights reserved.
//

#import <UIKit/UIKit.h>
//自定义一个ScrollView，用于展现全屏图片
@interface APScrollView : UIScrollView {
    UIInterfaceOrientation    _lastOrientation;
}
@property (nonatomic,strong) UIPageControl *statusBarPageControl;
@end
