//
//  HotelViewController.h
//  Final
//
//  Created by Willard Lin on 13-4-29.
//  Copyright (c) 2013年 林志利. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Informations.h"
@interface HotelViewController : UITableViewController
@property (nonatomic,strong) Informations *hotel;
@property (assign) NSInteger hotelCount;
@property (nonatomic,strong) NSDictionary       *hotelDictionary;

@end
