//
//  ViewController.h
//  FlurryTotalInformation
//
//  Created by KSS on 13-4-23.
//  Copyright (c) 2013年 林志利. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MBProgressHUD.h"

@interface ViewController : UIViewController<MBProgressHUDDelegate,UITableViewDataSource,UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UISegmentedControl *AppName;
@property (strong, nonatomic) IBOutlet UITableView *tableView;

- (IBAction)AppChanged:(id)sender;

@property (assign) NSInteger dayValueCount;
//国家名字数组
@property (strong,nonatomic) NSArray *countryName;
@property (strong,nonatomic) NSArray *countries;
//活跃量
@property (strong,nonatomic) NSArray *dayValuePerDay;
@property (strong,nonatomic) NSArray *dayValuePerWeek;
@property (strong,nonatomic) NSArray *dayValuePerMonth;
@property (strong,nonatomic) NSArray *dayValueNewUsersPerDay;
@property (strong,nonatomic) NSArray *pageValuePerDay;
@property (strong,nonatomic) NSMutableArray *dayValueArray;

@property (strong,nonatomic) NSArray *rows;

//@property (strong,nonatomic) NSMutableArray *totalArray;
//@property (strong,nonatomic) NSMutableArray *totalSubArray;
- (void) getAllInformations;
//刷新
- (IBAction)refresh:(id)sender;

@end
