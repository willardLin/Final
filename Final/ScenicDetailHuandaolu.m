//
//  ScenicDetailHuandaolu.m
//  Final
//
//  Created by Willard Lin on 13-4-15.
//  Copyright (c) 2013年 林志利. All rights reserved.
//

#import "ScenicDetailHuandaolu.h"

@implementation ScenicDetailHuandaolu
- (id) init
{
    if (self = [super init])
    {
        
        self.scenicName = kHuandaolu;
        self.title = kHuandaolu;
        self.openTime = [[NSArray alloc] initWithObjects:
                         kHuandaolu_openTime,
                         nil];
        self.price = [[NSArray alloc] initWithObjects:
                      kHuandaolu_price,
                      nil];
        self.address = [[NSArray alloc] initWithObjects:
                        kHuandaolu_address,
                        nil];
        self.description = [[NSArray alloc] initWithObjects:
                            kHuandaolu_description,
                            nil];
        self.scenicSubNameCount = self.scenicSubName.count;
        self.bus = [[NSArray alloc] initWithObjects:
                    kHuandaolu_bus,
                    nil];
        dispatch_queue_t queue = dispatch_get_main_queue();
        
        dispatch_async(queue,^{
            NSMutableArray *huandaolu       = [[NSMutableArray alloc] initWithObjects:
                                              [UIImage imageNamed:kHuandaolu_pic1],
                                              [UIImage imageNamed:kHuandaolu_pic2],
                                              [UIImage imageNamed:kHuandaolu_pic3],
                                              nil];
            self.imagesArray = [[NSArray alloc] initWithObjects:
                                huandaolu,
                                nil];
        });
    }
    
    return self;
}

@end
