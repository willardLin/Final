//
//  GetDictionaryDayInformation.h
//  FlurryTotalInformation
//
//  Created by KSS on 13-4-27.
//  Copyright (c) 2013年 林志利. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GetDictionaryDayInformation : NSObject
@property (assign) NSInteger dayValueCount;
@property (nonatomic,strong) NSMutableArray *countryArray;
@property (nonatomic,strong) NSMutableArray *countryName;
@property (nonatomic,strong) NSMutableArray *dayValue;
@property (nonatomic,strong) NSDictionary *metricDictionary;

//获取国家名字
- (NSArray *)getCountryNameFromMetric:(NSDictionary *) aDictionary;
//获取@value的值
- (NSArray *)getDayValueFromMetric:(NSDictionary *) aDictionary;
- (NSUInteger)getAllDayValueFromMetric:(NSDictionary *)aDictionary;
@end
