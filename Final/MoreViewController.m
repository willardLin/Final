//
//  MoreViewController.m
//  Final
//
//  Created by Willard Lin on 13-4-30.
//  Copyright (c) 2013年 林志利. All rights reserved.
//

#import "MoreViewController.h"

@interface MoreViewController ()

@end

@implementation MoreViewController
#define SCROLLVIEW_CONTENTSIZE_WIDTH 320
#define SCROLLVIEW_CONTENTSIZE_HEIGHT 368
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
    _baseScrollView.contentSize = CGSizeMake(SCROLLVIEW_CONTENTSIZE_WIDTH, SCROLLVIEW_CONTENTSIZE_HEIGHT);
    self.view.backgroundColor  = [UIColor colorWithRed:0.961 green:0.961 blue:0.961 alpha:1];
//    [_weiboButton setTitle:@"_____言__志_" forState:UIControlStateNormal];
//    [_weiboButton setTitleColor:[UIColor blackColor] forState:UIControlStateHighlighted];
//    [_weiboButton setTitle:@"_____言__志_" forState:UIControlStateHighlighted];
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)weiboPressed:(id)sender
{
    _weiboURL = @"http://m.weibo.cn/u/1883533714?vt=4";
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:_weiboURL]];
}
- (IBAction)emailPressed:(id)sender
{
    _emailURL = @"mailto://willard_lin@yahoo.com";
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:_emailURL]];
}
- (IBAction)renrenPressed:(id)sender
{
    _renrenURL = @"http://www.renren.com/251884366/profile";
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:_renrenURL]];

}

- (IBAction)githubPressed:(id)sender
{
    _githubURL = @"https://github.com/willardLin";
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:_githubURL]];

}

@end
