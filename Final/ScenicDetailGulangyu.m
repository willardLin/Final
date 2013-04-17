//
//  ScenicDetailGulangyu.m
//  Final
//
//  Created by Willard Lin on 13-4-12.
//  Copyright (c) 2013年 林志利. All rights reserved.
//

#import "ScenicDetailGulangyu.h"
#import "ScenicDetailWords.h"

@implementation ScenicDetailGulangyu
- (id) init
{
    if (self = [super init])
    {
        self.scenicName = kGulangyu;
        self.scenicSubName = kGulangyu_riguangyan;
        self.title = kGulangyu;
        self.imageArray = [[NSMutableArray alloc] init];
//        [self.imageArray addObject:];
        NSData *imageData = UIImageJPEGRepresentation([UIImage imageNamed:@"riguangyan1.jpg"], 0.5);
        [self.imageArray addObject:[[UIImage alloc]initWithData:imageData]];

//        self.imageArray =
    }
    return self;
}

@end
