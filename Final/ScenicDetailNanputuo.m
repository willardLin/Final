//
//  ScenicDetailNanputuo.m
//  Final
//
//  Created by Willard Lin on 13-4-15.
//  Copyright (c) 2013年 林志利. All rights reserved.
//

#import "ScenicDetailNanputuo.h"

@implementation ScenicDetailNanputuo
- (id) init
{
    if (self = [super init])
    {
        
        self.scenicName = kNanputuo;
        self.title = kNanputuo;
        self.scenicSubName = [[NSMutableArray alloc] initWithObjects:
                              kNanputuo_tianwangdian,
                              kNanputuo_dabeidian,
                              kNanputuo_wulaofeng,
                              nil];
        
        self.openTime = [[NSArray alloc] initWithObjects:
                         kTianwangdian_openTime,
                         kDabeidian_openTime,
                         kWulaofeng_openTime,
                         nil];
        self.price = [[NSArray alloc] initWithObjects:
                      kTianwangdian_price,
                      kDabeidian_price,
                      kWulaofeng_price,
                      nil];
        self.address = [[NSArray alloc] initWithObjects:
                        kTianwangdian_address,
                        kDabeidian_address,
                        kWulaofeng_address,
                        nil];
        self.description = [[NSArray alloc] initWithObjects:
                            kTianwangdian_description,
                            kDabeidian_description,
                            kWulaofeng_description,
                            nil];
        self.scenicSubNameCount = self.scenicSubName.count;
        self.bus = [[NSArray alloc] initWithObjects:
                    kTianwangdian_bus,
                    kDabeidian_bus,
                    kWulaofeng_bus,
                    nil];
        dispatch_queue_t queue = dispatch_get_main_queue();
        
        dispatch_async(queue,^{
            NSMutableArray *tianwangdian       = [[NSMutableArray alloc] initWithObjects:
                                                   [UIImage imageNamed:kTianwangdian_pic1],
                                                   [UIImage imageNamed:kTianwangdian_pic2],
                                                   [UIImage imageNamed:kTianwangdian_pic3],
                                                   nil];
            NSMutableArray *dabeidian = [[NSMutableArray alloc] initWithObjects:
                                           [UIImage imageNamed:kDabeidian_pic1],
                                           [UIImage imageNamed:kDabeidian_pic2],
                                           [UIImage imageNamed:kDabeidian_pic3],
                                           nil];
            NSMutableArray *wulaofeng       = [[NSMutableArray alloc] initWithObjects:
                                                  [UIImage imageNamed:kWulaofeng_pic1],
                                                  [UIImage imageNamed:kWulaofeng_pic2],
                                                  [UIImage imageNamed:kWulaofeng_pic3],
                                                  nil];
            self.imagesArray = [[NSArray alloc] initWithObjects:
                                tianwangdian,
                                dabeidian,
                                wulaofeng,
                                nil];
        });
    }
    
    return self;
}
@end
