//
//  ShoppingViewController.h
//  Final
//
//  Created by Willard Lin on 13-4-30.
//  Copyright (c) 2013年 林志利. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Informations.h"
@interface ShoppingViewController : UITableViewController
@property (nonatomic,strong) Informations *shopping;
@property (assign) NSInteger shoppingCount;
@property (nonatomic,strong) NSDictionary       *shoppingDictionary;
@property (nonatomic,strong) NSMutableArray      *imageArray;

@end
