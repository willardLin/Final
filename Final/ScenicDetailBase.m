//
//  ScenicDetailBase.m
//  Final
//
//  Created by Willard Lin on 13-4-12.
//  Copyright (c) 2013年 林志利. All rights reserved.
//

#import "ScenicDetailBase.h"


#import "ScenicDetailGulangyu.h"

@implementation ScenicDetailBase

+(ScenicDetailBase *)classFromType:(kClassScenicNameType)type
{
    ScenicDetailBase *base = nil;
    switch(type)
    {
        case kGulangyuNameType:
            base = [[ScenicDetailGulangyu alloc] init];
            break;
    }
    base.type = kGulangyuNameType;
    return base;
}
@end
