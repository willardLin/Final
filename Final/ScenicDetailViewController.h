//
//  ScenicDetailViewController.h
//  Final
//
//  Created by 林志利 on 13-4-12.
//  Copyright (c) 2013年 林志利. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ScenicDetailWords.h"

@interface ScenicDetailViewController : UIViewController
//景点名称
@property (strong, nonatomic) IBOutlet UILabel *scenicName;
//景点子类名称
@property (strong, nonatomic) IBOutlet UILabel *scenicSubName;
- (void) setName:(NSString *)name;
@end
