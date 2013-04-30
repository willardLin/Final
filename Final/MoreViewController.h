//
//  MoreViewController.h
//  Final
//
//  Created by Willard Lin on 13-4-30.
//  Copyright (c) 2013年 林志利. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MoreViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIButton *weiboButton;
@property (strong, nonatomic) NSString *weiboURL;
@property (strong, nonatomic) NSString *emailURL;
@property (strong, nonatomic) NSString *renrenURL;
@property (strong, nonatomic) NSString *githubURL;
@property (strong, nonatomic) IBOutlet UIScrollView *baseScrollView;

- (IBAction)weiboPressed:(id)sender;
- (IBAction)emailPressed:(id)sender;
- (IBAction)renrenPressed:(id)sender;
- (IBAction)githubPressed:(id)sender;

@end
