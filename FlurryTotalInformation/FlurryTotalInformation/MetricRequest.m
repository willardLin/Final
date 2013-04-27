//
//  MetricRequest.m
//  FlurryTotalInformation
//
//  Created by KSS on 13-4-24.
//  Copyright (c) 2013年 林志利. All rights reserved.
//

#import "MetricRequest.h"
#import "JSONKit.h"
#define ACCESS_CODE @"QS3GBQCCRPVX48V8SC8W"

#define APP_START_DATE    @"2013-4-10"
#define GET_INFORMATION_APPKEY @"PWYH7WN4P4W4F8M7Z6QZ"
#define BEAUTY_FLURRY_APPKEY @"RXKN82TSN2P9DB7NQVQM"

//请求地址API
#define FLURRY_EVENT_URL  @"http://api.flurry.com/eventMetrics/Summary?apiAccessCode=%@&apiKey=%@&startDate=%@&endDate=%@"
#define FLURRY_METRIC_URL @"http://api.flurry.com/appMetrics/%@?apiAccessCode=%@&apiKey=%@&startDate=%@&endDate=%@&country=%@&groupBy=%@"

//URL的METRIC参数
#define METRIC_ACTIVEUSERS_PER_DAY   @"ActiveUsers"
#define METRIC_ACTIVEUSERS_PER_WEEK  @"ActiveUsersByWeek"
#define NEW_USERS                    @"NewUsers"

#define COUNTRY @"ALL"
#define VERSION_NAME @"1.0"
#define GROUPBY_DAYS @"DAYS"
#define GROUPBY_WEEKS @"WEEKS"
#define GROUPBY_MONTHS @"MONTHS"

#define ZERO @"0"
@implementation MetricRequest
- (id) init
{
    if (self = [super init])
    {
        _activeUserDataPerDay   = [[NSMutableData alloc] init];
        _activeUserDataPerWeek  = [[NSMutableData alloc] init];
        _usersNewInAppPerDay    = [[NSMutableData alloc] init];
        
        _urlDictionary          = [[NSMutableDictionary alloc] init];
        
        _dicActiveUsersPerDay   = [[NSMutableDictionary alloc] init];
        _dicActiveUsersPerWeek  = [[NSMutableDictionary alloc] init];
        _dicActiveUsersPerMonth = [[NSMutableDictionary alloc] init];
        _dicUsersNewInAppPerDay = [[NSMutableDictionary alloc] init];
    }
    return self;

}


//获取当天的日期
+ (NSString *)getCurrentDay
{
    /////////////////////时间////////////////////////////
    NSDate *today = [NSDate date];
    NSDateFormatter *f = [[NSDateFormatter alloc] init];
    [f setDateFormat:@"YYYY-MM-dd"];
    NSString *time = [f stringFromDate:today];
    NSLog(@"%@",time);
    return time;
}

//类方法
+(NSDictionary *)getActiveUsersPerWeekCount
{
    return [[[self alloc] init] getActiveUsersPerWeekNumber];
}
+(NSDictionary *)getActiveUsersPerDayCount
{
    return  [[[self alloc] init] getActiveUsersPerDayNumber];
}
+(NSDictionary *)getNewUsersCount
{
    return [[[self alloc] init] getNewUsersPerDayNumber];
}

+(id)getAllInformations
{
    [[[self alloc] init]getAll];
    return self;
}


//获取当天用户的活跃量
- (NSDictionary *)getActiveUsersPerDayNumber
{
    _url_metric = [NSURL URLWithString:[NSString stringWithFormat:FLURRY_METRIC_URL,METRIC_ACTIVEUSERS_PER_DAY,ACCESS_CODE,GET_INFORMATION_APPKEY,@"2013-4-18",@"2013-4-18",COUNTRY,GROUPBY_DAYS]];
    NSString *perDay = [NSString stringWithContentsOfURL:_url_metric encoding:NSUTF8StringEncoding error:nil];
    if (perDay == nil)
    {
        NSLog(@"值获取失败");
    }else{
        _dicActiveUsersPerDay = [perDay objectFromJSONString];
        NSLog(@"day:%@",_dicActiveUsersPerDay);
    }
    return _dicActiveUsersPerDay;
}

#pragma mark -
#pragma mark ASIHTTPRequest Delegate


//获取一周内登录过的活跃量
-(NSDictionary *)getActiveUsersPerWeekNumber
{
    _url_metric = [NSURL URLWithString:[NSString stringWithFormat:FLURRY_METRIC_URL,METRIC_ACTIVEUSERS_PER_WEEK,ACCESS_CODE,GET_INFORMATION_APPKEY,APP_START_DATE,[MetricRequest getCurrentDay],COUNTRY,GROUPBY_WEEKS]];
    NSString *perDay = [NSString stringWithContentsOfURL:_url_metric encoding:NSUTF8StringEncoding error:nil];
    if (perDay == nil)
    {
        NSLog(@"值获取失败");
    }else{
        _dicActiveUsersPerWeek = [perDay objectFromJSONString];
        NSLog(@"week:%@",_dicActiveUsersPerWeek);
    }
    return _dicActiveUsersPerWeek;

}
//获取一个月内登录过的活跃量
- (NSDictionary *)getActiveUsersPerMonthNumber
{
    _url_metric = [NSURL URLWithString:[NSString stringWithFormat:FLURRY_METRIC_URL,METRIC_ACTIVEUSERS_PER_WEEK,ACCESS_CODE,GET_INFORMATION_APPKEY,APP_START_DATE,[MetricRequest getCurrentDay],COUNTRY,GROUPBY_WEEKS]];
    NSString *perDay = [NSString stringWithContentsOfURL:_url_metric encoding:NSUTF8StringEncoding error:nil];
    if (perDay == nil)
    {
        NSLog(@"值获取失败");
    }else{
        _dicActiveUsersPerWeek = [perDay objectFromJSONString];
        NSLog(@"month:%@",_dicActiveUsersPerWeek);
    }
    return _dicActiveUsersPerMonth;
}

//每天新增用户量
-(NSDictionary *)getNewUsersPerDayNumber
{
//    _url_metric_perNewUsers = [NSURL URLWithString:[NSString stringWithFormat:FLURRY_METRIC_URL,NEW_USERS,ACCESS_CODE,GET_INFORMATION_APPKEY,[MetricRequest getCurrentDay],[MetricRequest getCurrentDay],COUNTRY,GROUPBY_DAYS]];
    _url_metric = [NSURL URLWithString:[NSString stringWithFormat:FLURRY_METRIC_URL,NEW_USERS,ACCESS_CODE,GET_INFORMATION_APPKEY,@"2013-4-18",@"2013-4-18",COUNTRY,GROUPBY_DAYS]];
    NSString *perDay = [NSString stringWithContentsOfURL:_url_metric encoding:NSUTF8StringEncoding error:nil];
    if (perDay == nil)
    {
        NSLog(@"值获取失败");
    }else{
        _dicUsersNewInAppPerDay = [perDay objectFromJSONString];
        NSLog(@"new Users:%@",_dicUsersNewInAppPerDay);
    }

    return _dicUsersNewInAppPerDay;

}

@end
