//
//  ScenicDetailBase.m
//  Final
//
//  Created by Willard Lin on 13-4-12.
//  Copyright (c) 2013年 林志利. All rights reserved.
//

#import "ScenicDetailBase.h"
//所有景点包
#import "ScenicViewController.h"
#import "ScenicDetailGulangyu.h"
#import "ScenicDetailZhongshanlu.h"
#import "ScenicDetailNanputuo.h"
#import "ScenicDetailXiamenDaxue.h"
#import "ScenicDetailZhiwuyuan.h"
#import "ScenicDetailNanhualu.h"
#import "ScenicDetailHuandaolu.h"
#import "ScenicDetailGuanyinshan.h"
#import "ScenicDetailTiedao.h"
#import "ScenicDetailChenjiageng.h"
#import "ScenicDetailHaiwan.h"
#import "ScenicDetailJimei.h"

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
        case kNanputuoNameType:
            base = [[ScenicDetailNanputuo alloc] init];
            break;
        case kXiamenDaxueNameType:
            base = [[ScenicDetailXiamenDaxue alloc] init];
            break;
        case kZhiwuyuanNameType:
            base = [[ScenicDetailZhiwuyuan alloc] init];
            break;
        case kNanhualuNameType:
            base = [[ScenicDetailNanhualu alloc] init];
            break;
        case kHuandaoluNameType:
            base = [[ScenicDetailHuandaolu alloc] init];
            break;
        case kGuanyinshanNameType:
            base = [[ScenicDetailGuanyinshan alloc] init];
            break;
        case kTiedaoNameType:
            base = [[ScenicDetailTiedao alloc] init];
            break;
        case kChenjiagengNameType:
            base = [[ScenicDetailChenjiageng alloc] init];
            break;
        case kHaiwanNameType:
            base = [[ScenicDetailHaiwan alloc] init];
            break;
        case kJimeiNameType:
            base = [[ScenicDetailJimei alloc] init];
            break;
        default:
            break;
    }
    base.type = type;
//    [_delegate sendScenicDetailBase:base];

    return base;
}

@end
