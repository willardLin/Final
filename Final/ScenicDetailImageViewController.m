//
//  ScenicDetailImageViewController.m
//  Final
//
//  Created by 林志利 on 13-4-15.
//  Copyright (c) 2013年 林志利. All rights reserved.
//

#import "ScenicDetailImageViewController.h"

@interface ScenicDetailImageViewController ()

@end

@implementation ScenicDetailImageViewController
@synthesize tapGesture   = _tapGesture;
@synthesize pageControl  = _pageControl;
@synthesize pageNumber   = _pageNumber;
//@synthesize swipeGesture = _swipeGesture;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        _imagesArray = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)viewDidLoad
{
    
    [super viewDidLoad];
    [self.navigationController.navigationBar setTranslucent:YES];
    self.navigationController.navigationBarHidden = YES;
//    self.tabBarController.tabBar.hidden = YES;
//    [[UIApplication sharedApplication]setStatusBarHidden:YES];

//    self.wantsFullScreenLayout = YES;
	// Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor blackColor];
    
//    NSLog(@"imagesArray : %@",_imagesArray);
    CGRect rect = CGRectMake(0, 0, self.view.bounds.size.width, 460);
//    NSLog(@"%f",self.view.bounds.size.height);
    _scrollView = [[APScrollView alloc] initWithFrame:rect];
    _scrollView.contentSize = CGSizeMake(self.view.frame.size.width * 3, self.scrollView.frame.size.height);
    _scrollView.pagingEnabled = YES;
    [_scrollView addSubview:[self imageWithFrame:CGRectMake(0,
                                                            0,
                                                            self.view.frame.size.width,
                                                            self.scrollView.frame.size.height) andImage:[_imagesArray objectAtIndex:0]]];
    [_scrollView addSubview:[self imageWithFrame:CGRectMake(self.view.frame.size.width,
                                                            0,
                                                            self.view.frame.size.width,
                                                            self.scrollView.frame.size.height) andImage:[_imagesArray objectAtIndex:1]]];
    
    [_scrollView addSubview:[self imageWithFrame:CGRectMake(self.view.frame.size.width*2,
                                                            0,
                                                            self.view.frame.size.width,
                                                            self.scrollView.frame.size.height) andImage:[_imagesArray objectAtIndex:2]]];

    _pageControl.currentPage = [_pageNumber intValue];
    CGPoint point = CGPointMake(self.view.frame.size.width * [_pageNumber intValue], 0);
    _scrollView.contentOffset= point;
    [self.view addSubview:_scrollView];

//    NSLog(@"%f,%f",point.x,point.y);

    _tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(displayNavigation)];
    [self.scrollView addGestureRecognizer:_tapGesture];
//    _scrollView.
    _scrollView.delegate = self;
    [self.view addSubview:_pageControl];
    [self.view bringSubviewToFront:_pageControl];
    
}

- (void)viewDidAppear:(BOOL)animated
{

}
- (void)displayNavigation
{
    if (self.navigationController.navigationBarHidden == YES) {
//        [[UIApplication sharedApplication] setStatusBarHidden:NO];
        [self.navigationController setNavigationBarHidden:NO animated:YES];
//        self.navigationController.navigationBarHidden = NO;
        self.navigationController.navigationBar.alpha = 0.7f;
        //    [UIApplication sharedApplication]statusBarStyle
//        CGRect rect = CGRectMake(0, 0,_scrollView.frame.size.width, _scrollView.frame.size.height);
//        
//        _scrollView.frame = rect;
//        [UIView beginAnimations:nil context:nil];
//        [UIView setAnimationDuration:0.4];
    }
    else
    {
//        [[UIApplication sharedApplication] setStatusBarHidden:YES withAnimation:UIStatusBarAnimationFade];
//        [[UIApplication sharedApplication] setStatusBarHidden:YES];
        [self.navigationController setNavigationBarHidden:YES animated:YES];
//        [UIView beginAnimations:nil context:nil];
//        [UIView setAnimationDuration:0.4];

    }
    //半透明
}

//UINavigation和TablBar的动画效果
//[UIView animateWithDuration:.4 animations:^{
//    [[UIApplication sharedApplication] setStatusBarHidden:show withAnimation:UIStatusBarAnimationFade];
//    _statusBarPageControl.alpha = show;
//
//    if (show) {
//        [[[UIApplication sharedApplication] keyWindow] addSubview:_statusBarPageControl];
//    }
//
//} completion:^(BOOL finished) {
//    if (!show) {
//        [_statusBarPageControl removeFromSuperview];
//    }
//}];

- (void)viewWillDisappear:(BOOL)animated
{
    self.navigationController.navigationBar.alpha = 1.0f;
    //显示Tabbar
//    self.tabBarController.tabBar.hidden = NO;
    //显示Navigation
    self.navigationController.navigationBar.hidden = NO;
    [self.navigationController.navigationBar setTranslucent:NO];

    //显示状态栏
//    [[UIApplication sharedApplication] setStatusBarHidden:NO];
//    self.hidesBottomBarWhenPushed = NO;
//    [super viewWillDisappear:animated];
    
}
-(void)viewWillAppear:(BOOL)animated
{
//    self.navigationController.navigationBar.hidden = YES;
}

//创建图片
- (UIImageView *)imageWithFrame: (CGRect)frame andImage:(UIImage *)imageName{
    UIImageView *imageView = [[UIImageView alloc] initWithImage:imageName];
    imageView.frame = frame;
    return imageView;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark UIScrollViewDelegate

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    _pageControl.currentPage = _scrollView.statusBarPageControl.currentPage;
}
//手指滑动时隐藏statusBar和UINavigation
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
//    self.navigationController.navigationBar.hidden = YES;
    [self.navigationController setNavigationBarHidden:YES animated:YES];
//    self.tabBarController.tabBarItem set  ;
//    [[UIApplication sharedApplication]setStatusBarHidden:YES];
//    [UIView beginAnimations:nil context:nil];
//    [UIView setAnimationDuration:0.4];

}


@end
