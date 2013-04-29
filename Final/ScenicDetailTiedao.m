//
//  ScenicDetailTiedao.m
//  Final
//
//  Created by Willard Lin on 13-4-15.
//  Copyright (c) 2013年 林志利. All rights reserved.
//

#import "ScenicDetailTiedao.h"

@implementation ScenicDetailTiedao
- (id) init
{
    if (self = [super init])
    {
        
        self.scenicName = kTiedao;
        self.title = kTiedao;
        self.openTime = [[NSArray alloc] initWithObjects:
                         kTiedao_openTime,
                         nil];
        self.price = [[NSArray alloc] initWithObjects:
                      kTiedao_price,
                      nil];
        self.address = [[NSArray alloc] initWithObjects:
                        kTiedao_address,
                        nil];
        self.description = [[NSArray alloc] initWithObjects:
                            kTiedao_description,
                            nil];
        self.scenicSubNameCount = self.scenicSubName.count;
        self.bus = [[NSArray alloc] initWithObjects:
                    kTiedao_bus,
                    nil];
        dispatch_queue_t queue = dispatch_get_main_queue();
        
        dispatch_async(queue,^{
            NSMutableArray *tiedao       = [[NSMutableArray alloc] initWithObjects:
                                                 [UIImage imageNamed:kTiedao_pic1],
                                                 [UIImage imageNamed:kTiedao_pic2],
                                                 [UIImage imageNamed:kTiedao_pic3],
                                                 nil];
            self.imagesArray = [[NSArray alloc] initWithObjects:
                                tiedao,
                                nil];
        });
    }
    
    return self;
}
@end
