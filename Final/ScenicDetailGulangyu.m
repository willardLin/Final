//
//  ScenicDetailGulangyu.m
//  Final
//
//  Created by Willard Lin on 13-4-12.
//  Copyright (c) 2013年 林志利. All rights reserved.
//

#import "ScenicDetailGulangyu.h"
#import "ScenicDetailWords.h"

@implementation ScenicDetailGulangyu
- (id) init
{
    
    if (self = [super init])
    {
        
        self.scenicName = kGulangyu;
        self.scenicSubName = [[NSMutableArray alloc] initWithObjects:
                              kGulangyu_riguangyan,
                              kGulangyu_shuzhuang,
                              kGulangyu_haoyueyuan,
                              kGulangyu_fengqin,nil];
        self.openTime = [[NSArray alloc] initWithObjects:
                         kRiguangyan_openTime,
                         kShuzhuanghuayuan_openTime,
                         kHaoyueyuan_openTime,
                         kFengqin_openTime, nil];
        self.price = [[NSArray alloc] initWithObjects:
                      kRiguangyan_price,
                      kShuzhuanghuayuan_price,
                      kHaoyueyuan_price,
                      kFengqin_price, nil];
        self.address = [[NSArray alloc] initWithObjects:
                        kRiguangyan_address,
                        kShuzhuanghuayuan_address,
                        kHaoyueyuan_address,
                        kFengqin_address, nil];
        self.description = [[NSArray alloc] initWithObjects:
                            kRiguangyan_description,
                            kShuzhuanghuayuan_description,
                            kHaoyueyuan_description,
                            kFengqin_description, nil];
        self.title = kGulangyu;
        self.scenicSubNameCount = self.scenicSubName.count;
        self.bus = [[NSArray alloc] initWithObjects:
<<<<<<< HEAD
                    kRiguangyan_Bus,
                    kShuzhuanghuayuan_Bus,
                    kHaoyueyuan_Bus,
                    kFengqin_Bus, nil];
=======
                    kRiguangyan_bus,
                    kShuzhuanghuayuan_bus,
                    kHaoyueyuan_bus,
                    kFengqin_bus, nil];
>>>>>>> 更新了南普陀寺
        dispatch_queue_t queue = dispatch_get_main_queue();
      
        dispatch_async(queue,^{
            NSMutableArray *riguangyan       = [[NSMutableArray alloc] initWithObjects:
                                                [UIImage imageNamed:kRiguangyan_pic1],
                                                [UIImage imageNamed:kRiguangyan_pic2],
                                                [UIImage imageNamed:kRiguangyan_pic3],nil];
            NSMutableArray *shuzhuanghuayuan = [[NSMutableArray alloc] initWithObjects:
                                                [UIImage imageNamed:kShuzhuanghuayuan_pic1],
                                                [UIImage imageNamed:kShuzhuanghuayuan_pic2],
                                                [UIImage imageNamed:kShuzhuanghuayuan_pic3], nil];
            NSMutableArray *haoyueyuan       = [[NSMutableArray alloc] initWithObjects:
                                                [UIImage imageNamed:kHaoyueyuan_pic1],
                                                [UIImage imageNamed:kHaoyueyuan_pic2],
                                                [UIImage imageNamed:kHaoyueyuan_pic3], nil];
            NSMutableArray *fengqin          = [[NSMutableArray alloc] initWithObjects:
                                                [UIImage imageNamed:kFengqin_pic1],
                                                [UIImage imageNamed:kFengqin_pic2],
                                                [UIImage imageNamed:kFengqin_pic3], nil];
<<<<<<< HEAD
<<<<<<< HEAD
            self.imageDictionary = [[NSDictionary alloc] initWithObjectsAndKeys:
                                    riguangyan,kRiguangyan,
                                    shuzhuanghuayuan,kShuzhuang,
                                    haoyueyuan,kHaoyueyuan,
                                    fengqin,kFengqin,nil];
=======
            self.imagesArray = [[NSArray alloc] initWithObjects:riguangyan,shuzhuanghuayuan,haoyueyuan,fengqin, nil];
>>>>>>> 添加了中山路
=======
            self.imagesArray = [[NSArray alloc] initWithObjects:riguangyan,shuzhuanghuayuan,haoyueyuan,fengqin, nil];
>>>>>>> 更新了南普陀寺
        });
    }
    
    return self;
}

@end
