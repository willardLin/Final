//
//  ScenicDetailNanhualu.m
//  Final
//
//  Created by Willard Lin on 13-4-15.
//  Copyright (c) 2013年 林志利. All rights reserved.
//

#import "ScenicDetailNanhualu.h"

@implementation ScenicDetailNanhualu
- (id) init
{
    if (self = [super init])
    {
        
        self.scenicName = kNanhualu;
        self.title = kNanhualu;
        self.openTime = [[NSArray alloc] initWithObjects:
                         kNanhualu_openTime,
                         nil];
        self.price = [[NSArray alloc] initWithObjects:
                      kNanhualu_price,
                      nil];
        self.address = [[NSArray alloc] initWithObjects:
                        kNanhualu_address,
                        nil];
        self.description = [[NSArray alloc] initWithObjects:
                            kNanhualu_description,
                            nil];
        self.scenicSubNameCount = self.scenicSubName.count;
        self.bus = [[NSArray alloc] initWithObjects:
                    kNanhualu_bus,
                    nil];
        dispatch_queue_t queue = dispatch_get_main_queue();
        
        dispatch_async(queue,^{
            NSMutableArray *nanhualu       = [[NSMutableArray alloc] initWithObjects:
                                               [UIImage imageNamed:kNanhualu_pic1],
                                               [UIImage imageNamed:kNanhualu_pic2],
                                               [UIImage imageNamed:kNanhualu_pic3],
                                               nil];
            self.imagesArray = [[NSArray alloc] initWithObjects:
                                nanhualu,
                                nil];
        });
    }
    
    return self;
}

@end
