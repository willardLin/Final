//
//  ScenicDetailBase.m
//  Final
//
//  Created by Willard Lin on 13-4-12.
//  Copyright (c) 2013年 林志利. All rights reserved.
//

#import "ScenicDetailBase.h"
#import "ScenicViewController.h"
#import "ScenicDetailGulangyu.h"
#import "ScenicDetailZhongshanlu.h"

@implementation ScenicDetailBase
@synthesize scenicName = _scenicName;
@synthesize scenicSubName = _scenicSubName;

+(ScenicDetailBase *)classFromType:(kClassScenicNameType)type
{
    ScenicDetailBase *base = nil;
    switch(type)
    {
        case kGulangyuNameType:
            base = [[ScenicDetailGulangyu alloc] init];
            break;
        case kZhongshanluNameType:
            base = [[ScenicDetailZhongshanlu alloc] init];
            break;
        default:
            break;
    }
    base.type = kGulangyuNameType;
//    [_delegate sendScenicDetailBase:base];

    return base;
}

@end
