//
//  ViewController.m
//  Final
//
//  Created by 林志利 on 13-4-1.
//  Copyright (c) 2013年 林志利. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import <QuartzCore/QuartzCore.h>
@interface ViewController ()

@end

@implementation ViewController
@synthesize places = _places;

- (void)viewDidLoad
{
//    UIImage *image = [[UIImage alloc] initWith]
//    [_places setBackgroundImage:nil forState:UIControlEventTouchDown];
//    NSLog(@"%@",_places.frame);
//    _places.background
    [_places.layer setMasksToBounds:YES];
    _places.layer.cornerRadius = 0.0f;
    _places.layer.borderColor = (__bridge CGColorRef)([UIColor redColor]);
    _places.layer.borderWidth = 3.0f;
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)push:(id)sender
{
    
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
//    SecondViewController *secondVC = segue.destinationViewController;
}
@end
