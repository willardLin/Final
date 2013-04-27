//
//  MetricRequest.h
//  FlurryTotalInformation
//
//  Created by KSS on 13-4-24.
//  Copyright (c) 2013年 林志利. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MetricRequest : NSObject<NSURLConnectionDelegate>

//获取当天的日期
+ (NSString *)getCurrentDay;
//获取当天用户的活跃量
-(NSDictionary *)getActiveUsersPerDayNumber;
//获取一周内登录过的活跃量
-(NSDictionary *)getActiveUsersPerWeekNumber;
//每天新增加的用户量
-(NSDictionary *)getNewUsersPerDayNumber;
//每月新增用户
-(NSDictionary *)getNewUsersPerMonthNumber;
//获取所有信息
- (void) getAll;
//类方法
+(NSDictionary *)getActiveUsersPerDayCount;
+(NSDictionary *)getActiveUsersPerWeekCount;
+(NSDictionary *)getNewUsersCount;
+(NSDictionary *)getActiveUsersPerMonthCount;
+(id)getAllInformations;

@property (nonatomic,strong) NSOperationQueue *queue;
@property (nonatomic,strong, readwrite) NSURLConnection *connection_perDay;
@property (nonatomic,strong, readwrite) NSURLConnection *connection_perWeek;
@property (nonatomic,strong, readwrite) NSURLConnection *connection_perMonth;
@property (nonatomic,strong, readwrite) NSURLConnection *connection_newUserPerDay;
@property (nonatomic,strong) NSMutableDictionary *urlDictionary;

@property (nonatomic,strong) NSMutableData *activeUserDataPerDay;
@property (nonatomic,strong) NSMutableData *activeUserDataPerWeek;
@property (nonatomic,strong) NSMutableData *activeUserDataPerMonth;
@property (nonatomic,strong) NSMutableData *usersNewInAppPerDay;

@property (nonatomic,strong) NSMutableDictionary *dicUsersNewInAppPerDay;
@property (nonatomic,strong) NSMutableDictionary *dicActiveUsersPerDay;
@property (nonatomic,strong) NSMutableDictionary *dicActiveUsersPerWeek;
@property (nonatomic,strong) NSMutableDictionary *dicActiveUsersPerMonth;

@property (nonatomic,strong) NSURL *url_metric;
//@property (nonatomic,strong) NSURL *url_metric_perDay;
//@property (nonatomic,strong) NSURL *url_metric_perWeek;
//@property (nonatomic,strong) NSURL *url_metric_perMonth;
//@property (nonatomic,strong) NSURL *url_metric_perNewUsers;


@end
