//
//  ScenicDetailBase.h
//  Final
//
//  Created by Willard Lin on 13-4-12.
//  Copyright (c) 2013年 林志利. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ScenicDetailWords.h"

typedef enum
{
    kGulangyuNameType = 0,
    kZhongshanluNameType,
    kNanputuoNameType,
}kClassScenicNameType;

@interface ScenicDetailBase : NSObject

//景点名称
@property (nonatomic,strong) NSString *scenicName;
//子景点名称
@property (nonatomic,strong) NSString *scenicSubName;
//Navigation标题
@property (nonatomic,strong) NSString *title;
//景点enum
@property (nonatomic,assign) kClassScenicNameType type;

//类方法。构建对应的子类
+ (ScenicDetailBase *) classFromType:(kClassScenicNameType)type;
@end

