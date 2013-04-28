//
//  ScenicDetailGuanyinshan.m
//  Final
//
//  Created by Willard Lin on 13-4-15.
//  Copyright (c) 2013年 林志利. All rights reserved.
//

#import "ScenicDetailGuanyinshan.h"

@implementation ScenicDetailGuanyinshan
- (id) init
{
    if (self = [super init])
    {
        
        self.scenicName = kGuanyinshan;
        self.title = kGuanyinshan;;
        self.openTime = [[NSArray alloc] initWithObjects:
                         kGuanyinshan_openTime,
                         nil];
        self.price = [[NSArray alloc] initWithObjects:
                      kGuanyinshan_price,
                      nil];
        self.address = [[NSArray alloc] initWithObjects:
                        kGuanyinshan_address,
                        nil];
        self.description = [[NSArray alloc] initWithObjects:
                            kGuanyinshan_description,
                            nil];
        self.scenicSubNameCount = self.scenicSubName.count;
        self.bus = [[NSArray alloc] initWithObjects:
                    kGuanyinshan_bus,
                    nil];
        dispatch_queue_t queue = dispatch_get_main_queue();
        
        dispatch_async(queue,^{
            NSMutableArray *guanyinshan       = [[NSMutableArray alloc] initWithObjects:
                                               [UIImage imageNamed:kGuanyinshan_pic1],
                                               [UIImage imageNamed:kGuanyinshan_pic2],
                                               [UIImage imageNamed:kGuanyinshan_pic3],
                                               nil];
            self.imagesArray = [[NSArray alloc] initWithObjects:
                                guanyinshan,
                                nil];
        });
    }
    
    return self;
}

@end
