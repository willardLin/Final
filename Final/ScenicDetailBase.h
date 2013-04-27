//
//  ScenicDetailBase.h
//  Final
//
//  Created by Willard Lin on 13-4-12.
//  Copyright (c) 2013年 林志利. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ScenicDetailWords.h"
#import "APScrollView.h"
typedef enum
{
    kGulangyuNameType = 0,
    kZhongshanluNameType,
    kNanputuoNameType,
    kXiamenDaxueNameType,
    kZhiwuyuanNameType,
    kNanhualuNameType,
    kHuandaoluNameType,
    kGuanyinshanNameType,
    kTiedaoNameType,
    kChenjiagengNameType,
    kHaiwanNameType,
    kJimeiNameType
}kClassScenicNameType;

@interface ScenicDetailBase : NSObject

//景点名称
@property (nonatomic,strong) NSString *scenicName;
//子景点名称
@property (nonatomic,strong) NSArray *scenicSubName;
//子景点个数
@property (assign) NSInteger scenicSubNameCount;
//Navigation标题
@property (nonatomic,strong) NSString *title;
//景点enum
@property (nonatomic,assign) kClassScenicNameType type;
//景点图片
<<<<<<< HEAD
@property (nonatomic,strong) NSDictionary *imageDictionary;
=======
@property (nonatomic,strong) NSArray *imagesArray;
>>>>>>> 添加了中山路
//价格
@property (nonatomic,strong) NSArray *price;
////地址
//@property (nonatomic,strong) NSArray *location;
//开放时间
@property (nonatomic,strong) NSArray *openTime;
//景点描述
@property (nonatomic,strong) NSArray *description;
//公交路线
@property (nonatomic,strong) NSArray *bus;
//地址
@property (nonatomic,strong) NSArray *address;

//类方法。构建对应的子类
+ (ScenicDetailBase *) classFromType:(kClassScenicNameType)type;

@end

