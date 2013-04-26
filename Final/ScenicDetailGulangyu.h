//
//  ScenicDetailGulangyu.h
//  Final
//
//  Created by Willard Lin on 13-4-12.
//  Copyright (c) 2013年 林志利. All rights reserved.
//

#import "ScenicDetailBase.h"

@interface ScenicDetailGulangyu : ScenicDetailBase
typedef enum
{
    kRiguangyanNameType = 0,
    kShuzhuangNameType,
    kHaoyueyuanNameType,
    kFengqinNameType,
}kGulangyuType;

@property (nonatomic,strong) APScrollView *scrollView;
@property (nonatomic,strong) NSArray *views;
@end
