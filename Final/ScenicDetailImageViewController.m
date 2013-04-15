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
@synthesize swipeGesture = _swipeGesture;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    
    [super viewDidLoad];
    self.wantsFullScreenLayout = YES;
	// Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    _scrollView = [[APScrollView alloc] initWithFrame:self.view.bounds];
    _scrollView.contentSize = CGSizeMake(self.view.frame.size.width * 3, self.scrollView.frame.size.height);
    _scrollView.pagingEnabled = YES;
    [_scrollView addSubview:[self imageWithFrame:CGRectMake(0,
                                                            0,
                                                            self.view.frame.size.width,
                                                            self.scrollView.frame.size.height) andImageName:@"IMG_0670.PNG"]];
    [_scrollView addSubview:[self imageWithFrame:CGRectMake(self.view.frame.size.width,
                                                            0,
                                                            self.view.frame.size.width,
                                                            self.scrollView.frame.size.height) andImageName:@"IMG_0671.PNG"]];
    
    [_scrollView addSubview:[self imageWithFrame:CGRectMake(self.view.frame.size.width*2,
                                                            0,
                                                            self.view.frame.size.width,
                                                            self.scrollView.frame.size.height) andImageName:@"IMG_0673.PNG"]];
    
    [self.view addSubview:_scrollView];
    _tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(displayNavigationAndTabBar)];
    [self.scrollView addGestureRecognizer:_tapGesture];
    [self.scrollView addGestureRecognizer:_swipeGesture];
    
}

- (void)displayNavigationAndTabBar
{
    if (self.navigationController.navigationBarHidden == YES) {
        self.tabBarController.tabBar.hidden = NO;
        [[UIApplication sharedApplication] setStatusBarHidden:NO];
//        [[UIApplication sharedApplication] setStatusBarHidden:NO withAnimation:UIStatusBarAnimationFade];
        self.navigationController.navigationBarHidden = NO;
        self.navigationController.navigationBar.alpha = 0.7f;
        //    [UIApplication sharedApplication]statusBarStyle
        CGRect rect = CGRectMake(0, 0,_scrollView.frame.size.width, _scrollView.frame.size.height);
        _scrollView.frame = rect;

    }
    else
    {
//        [[UIApplication sharedApplication] setStatusBarHidden:YES withAnimation:UIStatusBarAnimationFade];
        
        self.navigationController.navigationBarHidden = YES;
        self.tabBarController.tabBar.hidden = YES;
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
}
-(void)viewWillAppear:(BOOL)animated
{
    self.navigationController.navigationBarHidden = YES;
    self.tabBarController.tabBar.hidden = YES;
}
- (UIImageView *)imageWithFrame: (CGRect)frame andImageName:(NSString *)imageName{
    UIImage *image = [UIImage imageNamed:imageName];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    imageView.frame = frame;
    return imageView;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
