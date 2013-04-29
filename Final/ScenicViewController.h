//
//  ScenicViewController.h
//  Final
//
//  Created by 林志利 on 13-4-1.
//  Copyright (c) 2013年 林志利. All rights reserved.
//

//景点  ViewController
#import <UIKit/UIKit.h>
#import "Informations.h"
#import "ScenicDetailBase.h"
#import "ScenicDetailViewController.h"

@interface ScenicViewController : UITableViewController
@property (nonatomic,strong) Informations       *scenic;
@property (nonatomic,strong) NSArray            *scenicArray;
@property (nonatomic,strong) NSDictionary       *scenicDictionary;
@property (nonatomic,strong) ScenicDetailBase   *base;
@end
