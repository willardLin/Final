//
//  ScenicDetailXiamenDaxue.m
//  Final
//
//  Created by Willard Lin on 13-4-15.
//  Copyright (c) 2013年 林志利. All rights reserved.
//

#import "ScenicDetailXiamenDaxue.h"

@implementation ScenicDetailXiamenDaxue
- (id) init
{
    if (self = [super init])
    {
        
        self.scenicName = kXiamendaxue;
        self.title = kXiamendaxue;
        self.openTime = [[NSArray alloc] initWithObjects:
                         kXiamendaxue_openTime,
                         nil];
        self.price = [[NSArray alloc] initWithObjects:
                      kXiamendaxue_price,
                      nil];
        self.address = [[NSArray alloc] initWithObjects:
                        kXiamendaxue_address,
                        nil];
        self.description = [[NSArray alloc] initWithObjects:
                            kXiamendaxue_description,
                            nil];
        self.scenicSubNameCount = self.scenicSubName.count;
        self.bus = [[NSArray alloc] initWithObjects:
                    kXiamenDaxue_bus,
                    nil];
        dispatch_queue_t queue = dispatch_get_main_queue();
        
        dispatch_async(queue,^{
            NSMutableArray *xiamendaxue       = [[NSMutableArray alloc] initWithObjects:
                                                  [UIImage imageNamed:kXiamendaxue_pic1],
                                                  [UIImage imageNamed:kXiamendaxue_pic2],
                                                  [UIImage imageNamed:kXiamendaxue_pic3],
                                                  nil];
            self.imagesArray = [[NSArray alloc] initWithObjects:
                                xiamendaxue,
                                nil];
        });
    }
    
    return self;
}

@end
