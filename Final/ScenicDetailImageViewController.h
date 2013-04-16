//
//  ScenicDetailImageViewController.h
//  Final
//
//  Created by 林志利 on 13-4-15.
//  Copyright (c) 2013年 林志利. All rights reserved.
//

#import "ScenicDetailViewController.h"
#import "APScrollView.h"

@interface ScenicDetailImageViewController : ScenicDetailViewController<UIScrollViewDelegate>
//查看图片的滚动视图
@property (nonatomic,strong) APScrollView *scrollView;
//存放图片的数组
@property (nonatomic,strong) NSArray *imagesArray;
//点击手势
@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *tapGesture;
//@property (strong, nonatomic) IBOutlet UINavigationBar *customNavigationBar;
@property (strong, nonatomic) IBOutlet UIPageControl *pageControl;

//特别订制Navigtion
//@property (strong, nonatomic) 
@end
