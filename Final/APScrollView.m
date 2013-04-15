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
    
    if (!_statusBarPageControl) {
        _lastOrientation = [[UIApplication sharedApplication] statusBarOrientation];
        
        _statusBarPageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(141, 404, 38, 36)];
        _statusBarPageControl.numberOfPages = (self.contentSize.width / self.frame.size.width);
        _statusBarPageControl.backgroundColor = [UIColor clearColor];
    }
    
}

- (void)setContentOffset:(CGPoint)contentOffset {
    [super setContentOffset:contentOffset];
    
    if (self.isTracking) {
        [self _setShowsPageControl:YES];
    }
    else if (!self.isDragging) {
        [self _setShowsPageControl:NO];
    }
    
    _statusBarPageControl.currentPage = (contentOffset.x + (self.frame.size.width / 2)) / (self.frame.size.width);
}

#pragma mark - Private methods

- (void)_setShowsPageControl: (BOOL)show {
    
    if (_lastOrientation != [[UIApplication sharedApplication] statusBarOrientation]) {
        _statusBarPageControl.transform = CGAffineTransformMakeRotation(UIInterfaceOrientationIsLandscape([[UIApplication sharedApplication] statusBarOrientation]) ? M_PI_2 : 0);
        _statusBarPageControl.frame = [[UIApplication sharedApplication] statusBarFrame];
        _lastOrientation = [[UIApplication sharedApplication] statusBarOrientation];
    }
    
    [UIView animateWithDuration:.4 animations:^{
        [[UIApplication sharedApplication] setStatusBarHidden:show withAnimation:UIStatusBarAnimationFade];
        _statusBarPageControl.alpha = show;
        
        if (show) {
            [[[UIApplication sharedApplication] keyWindow] addSubview:_statusBarPageControl];
        }
        
    } completion:^(BOOL finished) {
        if (!show) {
            [_statusBarPageControl removeFromSuperview];
        }
    }];
}



@end
