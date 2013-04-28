//
//  ScenicDetailZhongshanlu.m
//  Final
//
//  Created by Willard Lin on 13-4-15.
//  Copyright (c) 2013年 林志利. All rights reserved.
//

#import "ScenicDetailZhongshanlu.h"

@implementation ScenicDetailZhongshanlu
- (id) init
{
    if (self = [super init])
    {
<<<<<<< HEAD
<<<<<<< HEAD
        self.scenicName = kZhongshanlu;
//        self.scenicSubName = kZhongshanlu_taiwanjie;
        self.title = kZhongshanlu;
=======
=======
>>>>>>> 更新了南普陀寺
        
        self.scenicName = kGulangyu;
        self.scenicSubName = [[NSMutableArray alloc] initWithObjects:
                              kZhongshanlu_taiwanjie,
                              kZhongshanlu_zhaoxiaojie,
                              kZhongshanlu_zhangsanfeng,
                              nil];

        self.openTime = [[NSArray alloc] initWithObjects:
                         kTaiwanxiaochi_openTime,
                         kZhaoxiaojie_openTime,
                         kZhangsanfeng_openTime,
                         nil];
        self.price = [[NSArray alloc] initWithObjects:
                      kTaiwanxiaochi_price,
                      kZhaoxiaojie_price,
                      kZhangsanfeng_price,
                      nil];
        self.address = [[NSArray alloc] initWithObjects:
                        kTaiwanxiaochi_address,
                        kZhaoxiaojie_address,
                        kZhangsanfeng_address,
                        nil];
        self.description = [[NSArray alloc] initWithObjects:
                            kTaiwanxiaochi_description,
                            kZhaoxiaojie_description,
                            kZhangsanfeng_description,
                            nil];
        self.title = kZhongshanlu;
        self.scenicSubNameCount = self.scenicSubName.count;
        self.bus = [[NSArray alloc] initWithObjects:
<<<<<<< HEAD
                    kTaiwanxiaochi_Bus,
                    kZhaoxiaojie_Bus,
                    kZhangsanfeng_Bus,
=======
                    kTaiwanxiaochi_bus,
                    kZhaoxiaojie_bus,
                    kZhangsanfeng_bus,
>>>>>>> 更新了南普陀寺
                    nil];
        dispatch_queue_t queue = dispatch_get_main_queue();
        
        dispatch_async(queue,^{
            NSMutableArray *taiwanxiaochi       = [[NSMutableArray alloc] initWithObjects:
                                                [UIImage imageNamed:kTaiwanxiaochi_pic1],
                                                [UIImage imageNamed:kTaiwanxiaochi_pic2],
                                                [UIImage imageNamed:kTaiwanxiaochi_pic3],
                                                nil];
            NSMutableArray *zhaoxiaojie = [[NSMutableArray alloc] initWithObjects:
                                                [UIImage imageNamed:kZhaoxiaojie_pic1],
                                                [UIImage imageNamed:kZhaoxiaojie_pic2],
                                                [UIImage imageNamed:kZhaoxiaojie_pic3],
                                                nil];
            NSMutableArray *zhangsanfeng       = [[NSMutableArray alloc] initWithObjects:
                                                [UIImage imageNamed:kZhangsanfeng_pic1],
                                                [UIImage imageNamed:kZhangsanfeng_pic2],
                                                [UIImage imageNamed:kZhangsanfeng_pic3],
                                                nil];
            self.imagesArray = [[NSArray alloc] initWithObjects:
                                taiwanxiaochi,
                                zhaoxiaojie,
                                zhangsanfeng,
                                nil];
        });
<<<<<<< HEAD
>>>>>>> 添加了中山路
=======
>>>>>>> 更新了南普陀寺
    }
    
    return self;
}

@end
