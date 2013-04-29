//
//  ScenicDetailJimei.m
//  Final
//
//  Created by Willard Lin on 13-4-15.
//  Copyright (c) 2013年 林志利. All rights reserved.
//

#import "ScenicDetailJimei.h"

@implementation ScenicDetailJimei
- (id) init
{
    if (self = [super init])
    {
        
        self.scenicName = kJimei;
        self.title = kJimei;
        self.openTime = [[NSArray alloc] initWithObjects:
                         kJimei_openTime,
                         nil];
        self.price = [[NSArray alloc] initWithObjects:
                      kJimei_price,
                      nil];
        self.address = [[NSArray alloc] initWithObjects:
                        kJimei_address,
                        nil];
        self.description = [[NSArray alloc] initWithObjects:
                            kJimei_description,
                            nil];
        self.scenicSubNameCount = self.scenicSubName.count;
        self.bus = [[NSArray alloc] initWithObjects:
                    kJimei_bus,
                    nil];
        dispatch_queue_t queue = dispatch_get_main_queue();
        
        dispatch_async(queue,^{
            NSMutableArray *jimei   = [[NSMutableArray alloc] initWithObjects:
                                        [UIImage imageNamed:kJimei_pic1],
                                        [UIImage imageNamed:kJimei_pic2],
                                        [UIImage imageNamed:kJimei_pic3],
                                        nil];
            self.imagesArray = [[NSArray alloc] initWithObjects:
                                jimei,
                                nil];
        });
    }
    
    return self;
}

@end
