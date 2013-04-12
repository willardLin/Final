//
//  ScenicInformations.h
//  Final
//
//  Created by 林志利 on 13-4-1.
//  Copyright (c) 2013年 林志利. All rights reserved.
//

//获取风景点的信息
#import <Foundation/Foundation.h>

@interface ScenicInformations : NSObject
@property (nonatomic,strong) NSDictionary *informationsDictionary;
@property (nonatomic,strong) NSArray      *informationsArray;
- (id) initWithPlist:(NSString *)plist;
@end
