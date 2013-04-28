//
//  ScenicDetailZhiwuyuan.m
//  Final
//
//  Created by Willard Lin on 13-4-15.
//  Copyright (c) 2013年 林志利. All rights reserved.
//

#import "ScenicDetailZhiwuyuan.h"

@implementation ScenicDetailZhiwuyuan
- (id) init
{
    if (self = [super init])
    {
        
        self.scenicName = kZhiwuyuan;
        self.title = kZhiwuyuan;
        self.openTime = [[NSArray alloc] initWithObjects:
                         kZhiwuyuan_openTime,
                         nil];
        self.price = [[NSArray alloc] initWithObjects:
                      kZhiwuyuan_price,
                      nil];
        self.address = [[NSArray alloc] initWithObjects:
                        kZhiwuyuan_address,
                        nil];
        self.description = [[NSArray alloc] initWithObjects:
                            kZhiwuyuan_description,
                            nil];
        self.scenicSubNameCount = self.scenicSubName.count;
        self.bus = [[NSArray alloc] initWithObjects:
                    kZhiwuyuan_bus,
                    nil];
        dispatch_queue_t queue = dispatch_get_main_queue();
        
        dispatch_async(queue,^{
            NSMutableArray *zhiwuyuan       = [[NSMutableArray alloc] initWithObjects:
                                                 [UIImage imageNamed:kZhiwuyuan_pic1],
                                                 [UIImage imageNamed:kZhiwuyuan_pic2],
                                                 [UIImage imageNamed:kZhiwuyuan_pic3],
                                                 nil];
            self.imagesArray = [[NSArray alloc] initWithObjects:
                                zhiwuyuan,
                                nil];
        });
    }
    
    return self;
}
@end
