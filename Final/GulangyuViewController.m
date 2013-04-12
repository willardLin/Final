//
//  GulangyuViewController.m
//  Final
//
//  Created by 林志利 on 13-4-12.
//  Copyright (c) 2013年 林志利. All rights reserved.
//

#import "GulangyuViewController.h"
@interface GulangyuViewController ()

@end

@implementation GulangyuViewController

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
    self.scenicName.text = kGulangyu;
    self.scenicSubName.text = kGulangyu_haoyueyuan;

    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
