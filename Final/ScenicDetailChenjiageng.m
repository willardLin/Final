//
//  ScenicDetailChenjiageng.m
//  Final
//
//  Created by Willard Lin on 13-4-15.
//  Copyright (c) 2013年 林志利. All rights reserved.
//

#import "ScenicDetailChenjiageng.h"

@implementation ScenicDetailChenjiageng
- (id) init
{
    if (self = [super init])
    {
        
        self.scenicName = kChenjiageng;
        self.title = kChenjiageng;
        self.openTime = [[NSArray alloc] initWithObjects:
                         kChenjiageng_openTime,
                         nil];
        self.price = [[NSArray alloc] initWithObjects:
                      kChenjiageng_price,
                      nil];
        self.address = [[NSArray alloc] initWithObjects:
                        kChenjiageng_address,
                        nil];
        self.description = [[NSArray alloc] initWithObjects:
                            kChenjiageng_description,
                            nil];
        self.scenicSubNameCount = self.scenicSubName.count;
        self.bus = [[NSArray alloc] initWithObjects:
                    kChenjiageng_bus,
                    nil];
        dispatch_queue_t queue = dispatch_get_main_queue();
        
        dispatch_async(queue,^{
            NSMutableArray *chenjiageng   = [[NSMutableArray alloc] initWithObjects:
                                            [UIImage imageNamed:kChenjiageng_pic1],
                                            [UIImage imageNamed:kChenjiageng_pic2],
                                            [UIImage imageNamed:kChenjiageng_pic3],
                                            nil];
            self.imagesArray = [[NSArray alloc] initWithObjects:
                                chenjiageng,
                                nil];
        });
    }
    
    return self;
}

@end
