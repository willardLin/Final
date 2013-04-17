//
//  ScenicDetailViewController.m
//  Final
//
//  Created by 林志利 on 13-4-12.
//  Copyright (c) 2013年 林志利. All rights reserved.
//

#import "ScenicDetailViewController.h"
#import "ScenicViewController.h"
#import "ScenicDetailImageViewController.h"
#define SCREEN_WIDTH 320
#define BASE_SCROLLVIEW_HEIGHT 760
@interface ScenicDetailViewController ()

@end

@implementation ScenicDetailViewController
@synthesize scenicSubName  = _scenicSubName;
@synthesize baseScrollView = _baseScrollView;
@synthesize tapGesture = _tapGesture;
//@synthesize imageViews = _imageViews;
@synthesize imagesScrollView = _imagesScrollView;
@synthesize base = _base;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
    }
    return self;
}

- (void) viewWillAppear:(BOOL)animated
{

}

- (void)viewDidLoad
{
    self.baseScrollView.contentSize = CGSizeMake(SCREEN_WIDTH, BASE_SCROLLVIEW_HEIGHT);
    self.baseScrollView.showsHorizontalScrollIndicator = NO;
    self.baseScrollView.showsVerticalScrollIndicator = NO;
    _tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(prepareForSegue:sender:)];
//    [self.baseScrollView addGestureRecognizer:_tapGesture];
    //    self.imagesScrollView.contentSize = CGSizeMake(self.imageViews.count * self.imagesScrollView.frame.size.width, self.imagesScrollView.frame.size.height);
    CGRect rect = CGRectMake(20, 49, 280, 173);
    _imagesScrollView = [[APScrollView alloc] initWithFrame:rect];
    _imagesScrollView.contentSize = CGSizeMake(_imagesScrollView.frame.size.width * 3, _imagesScrollView.frame.size.height);
    _imagesScrollView.pagingEnabled = YES;
//    UIImageView 
//    [[_imagesScrollView addSubview:[[UIImageView alloc] initWithImage:[UIImage imageWithData:[self.base.imageArray objectAtIndex:0]]]]];
    self.scenicSubName.text = _base.scenicSubName;
    self.title = _base.title;
    
//    UIImage *image = [UIImage imageWithData:[self.base.imageArray objectAtIndex:0]];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[self.base.imageArray objectAtIndex:0]];
    [_imagesScrollView addSubview:imageView];
    [_baseScrollView addSubview:_imagesScrollView];
    [_imagesScrollView addGestureRecognizer:_tapGesture];
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"imageDetail"]) {
        NSLog(@"....");
        //隐藏Tabbar
        [(ScenicDetailImageViewController *)segue.destinationViewController setHidesBottomBarWhenPushed:YES];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
