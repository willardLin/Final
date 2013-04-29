//
//  ScenicDetailHaiwan.m
//  Final
//
//  Created by Willard Lin on 13-4-15.
//  Copyright (c) 2013年 林志利. All rights reserved.
//

#import "ScenicDetailHaiwan.h"

@implementation ScenicDetailHaiwan
- (id) init
{
    if (self = [super init])
    {
        
        self.scenicName = kHaiwan;
        self.title = kHaiwan;
        self.openTime = [[NSArray alloc] initWithObjects:
                         kHaiwan_openTime,
                         nil];
        self.price = [[NSArray alloc] initWithObjects:
                      kHaiwan_price,
                      nil];
        self.address = [[NSArray alloc] initWithObjects:
                        kHaiwan_address,
                        nil];
        self.description = [[NSArray alloc] initWithObjects:
                            kHaiwan_description,
                            nil];
        self.scenicSubNameCount = self.scenicSubName.count;
        self.bus = [[NSArray alloc] initWithObjects:
                    kHaiwan_bus,
                    nil];
        dispatch_queue_t queue = dispatch_get_main_queue();
        
        dispatch_async(queue,^{
            NSMutableArray *haiwan   = [[NSMutableArray alloc] initWithObjects:
                                             [UIImage imageNamed:kHaiwan_pic1],
                                             [UIImage imageNamed:kHaiwan_pic2],
                                             [UIImage imageNamed:kHaiwan_pic3],
                                             nil];
            self.imagesArray = [[NSArray alloc] initWithObjects:
                                haiwan,
                                nil];
        });
    }
    
    return self;
}

@end
