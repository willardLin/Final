//
//  APScrollView.m
//  APExtendedScrollView
//
//  Created by Andrzej on 23.01.2013.
//  Copyright (c) 2013 apuczyk. All rights reserved.
//

#import "APScrollView.h"

@implementation APScrollView
@synthesize statusBarPageControl = _statusBarPageControl;
- (void)layoutSubviews {
    [super layoutSubviews];
    self.showsHorizontalScrollIndicator = NO;
    self.showsVerticalScrollIndicator   = NO;
    if (!_statusBarPageControl) {
        _lastOrientation = [[UIApplication sharedApplication] statusBarOrientation];
        _statusBarPageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(141, 404, 38, 36)];
        _statusBarPageControl.numberOfPages = (self.contentSize.width / self.frame.size.width);
        _statusBarPageControl.backgroundColor = [UIColor clearColor];
    }
    
}

- (void)setContentOffset:(CGPoint)contentOffset {
    [super setContentOffset:contentOffset];    
    _statusBarPageControl.currentPage = (contentOffset.x + (self.frame.size.width / 2)) / (self.frame.size.width);
}

@end
