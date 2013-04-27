//
//  GetDictionaryDayInformation.m
//  FlurryTotalInformation
//
//  Created by KSS on 13-4-27.
//  Copyright (c) 2013年 林志利. All rights reserved.
//

#import "GetDictionaryDayInformation.h"
@interface GetDictionaryDayInformation()
@end

@implementation GetDictionaryDayInformation

- (id)init
{
    if (self = [super init])
    {
        _countryArray = [[NSMutableArray alloc] initWithObjects:@"所有国家", nil];
        _countryName  = [[NSMutableArray alloc] init];
        _dayValue     = [[NSMutableArray alloc] init];
        _metricDictionary = [[NSDictionary alloc] init];
        _dayValueCount = 0;
    }
    return self;
}
- (NSArray *)getCountryNameFromMetric:(NSDictionary *) aDictionary
{
    if (aDictionary != nil) {
        _metricDictionary = aDictionary;
        _countryArray = [aDictionary objectForKey:@"country"];
        for (NSDictionary *dic in _countryArray) {
            [_countryName addObject:[dic objectForKey:@"@country"]];
        }
    }
    return _countryName;
}

- (NSArray *)getDayValueFromMetric:(NSDictionary *) aDictionary
{
    if (aDictionary != nil) {
        _metricDictionary = aDictionary;
        _countryArray = [aDictionary objectForKey:@"country"];        
        for (NSDictionary *dic in _countryArray) {
            [_dayValue addObject:[[dic objectForKey:@"day"] objectForKey:@"@value"]];
        }
    }
    NSLog(@"%@",_dayValue );
    return _dayValue;
}

- (NSUInteger)getAllDayValueFromMetric:(NSDictionary *)aDictionary
{
    if (aDictionary != nil) {
        _metricDictionary = aDictionary;
        _countryArray = [aDictionary objectForKey:@"country"];
        for (NSDictionary *dic in _countryArray) {
            [_dayValue addObject:[[dic objectForKey:@"day"] objectForKey:@"@value"]];
        }
    }
    for (NSString *str in _dayValue)
    {
        _dayValueCount += [str intValue];
    }
    NSLog(@"总量%d",_dayValueCount);
    return _dayValueCount;
}
@end
