//
//  ScenicViewController.h
//  Final
//
//  Created by 林志利 on 13-4-1.
//  Copyright (c) 2013年 林志利. All rights reserved.
//

//景点  ViewController
#import <UIKit/UIKit.h>
#import "ScenicInformations.h"

@interface ScenicViewController : UITableViewController
@property (nonatomic,strong) ScenicInformations *scenic;
@property (nonatomic,strong) NSArray            *scenicArray;
@property (nonatomic,strong) NSDictionary       *scenicDictionary;
@end
