//
//  ScenicDetailViewController.m
//  Final
//
//  Created by 林志利 on 13-4-12.
//  Copyright (c) 2013年 林志利. All rights reserved.
//

#import "ScenicDetailViewController.h"
#import "ScenicViewController.h"
#define SCREEN_WIDTH 320
#define BASE_SCROLLVIEW_HEIGHT 760
@interface ScenicDetailViewController ()

@end

@implementation ScenicDetailViewController
@synthesize scenicSubName  = _scenicSubName;
@synthesize baseScrollView = _baseScrollView;
@synthesize tapGesture = _tapGesture;
@synthesize imageViews = _imageViews;
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

- (void)viewDidLoad
{
    self.baseScrollView.contentSize = CGSizeMake(SCREEN_WIDTH, BASE_SCROLLVIEW_HEIGHT);
    self.baseScrollView.showsHorizontalScrollIndicator = NO;
    self.baseScrollView.showsVerticalScrollIndicator = NO;
    _tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(prepareForSegue:sender:)];
    [self.baseScrollView addGestureRecognizer:_tapGesture];
//    self.imagesScrollView.contentSize = CGSizeMake(self.imageViews.count * self.imagesScrollView.frame.size.width, self.imagesScrollView.frame.size.height);
    _imagesScrollView = [[APScrollView alloc] initWithFrame:self.view.bounds];
    _imagesScrollView.contentSize = CGSizeMake(self.imagesScrollView.frame.size.width * 3, self.imagesScrollView.frame.size.height);
    _imagesScrollView.pagingEnabled = YES;

    self.scenicSubName.text = _base.scenicSubName;
    self.title = _base.title;
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    for (UIImageView *imageView in _imageViews)
    {
        NSLog(@"%@",imageView.image);
    }
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"imageDetail"]) {
        NSLog(@"....");
    }
}

    - (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
