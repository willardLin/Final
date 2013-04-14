//
//  ScenicDetailViewController.m
//  Final
//
//  Created by 林志利 on 13-4-12.
//  Copyright (c) 2013年 林志利. All rights reserved.
//

#import "ScenicDetailViewController.h"
#import "ScenicViewController.h"

@interface ScenicDetailViewController ()

@end

@implementation ScenicDetailViewController
@synthesize scenicName = _scenicName;
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
    self.scenicSubName.text = _base.scenicSubName;
    self.scenicName.text = _base.scenicName;
    self.title = _base.title;
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
