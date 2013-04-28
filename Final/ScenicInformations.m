//
//  ScenicInformations.m
//  Final
//
//  Created by 林志利 on 13-4-1.
//  Copyright (c) 2013年 林志利. All rights reserved.
//

#import "ScenicInformations.h"
#import "FileName.h"
@implementation ScenicInformations
@synthesize informationsArray = _informationsArray;
@synthesize informationsDictionary = _informationsDictionary;

- (id) initWithPlist:(NSString *)plist
{
    if (self = [super init])
    {
        NSString *plistPath = [[NSBundle mainBundle] pathForResource:plist ofType:@"plist"];
        _informationsDictionary = [[NSDictionary alloc] initWithContentsOfFile:plistPath];
        return self;
    }
    return self;
}

@end
