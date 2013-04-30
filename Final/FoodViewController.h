//
//  FoodViewController.h
//  Final
//
//  Created by Willard Lin on 13-4-30.
//  Copyright (c) 2013年 林志利. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Informations.h"
@interface FoodViewController : UITableViewController
@property (nonatomic,strong) Informations *food;
@property (assign) NSInteger foodCount;
@property (nonatomic,strong) NSDictionary       *foodDictionary;
@property (nonatomic,strong) NSMutableArray      *imageArray;

@end
