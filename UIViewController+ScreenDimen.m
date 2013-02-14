//
//  UIViewController+ScreenDimen.m
//
//  Created by Heather Snepenger on 2/5/13.
//  Copyright (c) 2013 Heather Snepenger. All rights reserved.
//

#import "UIViewController+ScreenDimen.h"

static NSInteger *height = nil;
static CGRect size;

@implementation UIViewController (ScreenDimen)

- (NSInteger) screenHeight
{
    if (!height) {
        CGRect screenRect = [[UIScreen mainScreen] bounds];
        CGFloat screenWidth = screenRect.size.width;
        CGFloat screenHeight = screenRect.size.height;
        height = (int)screenHeight;
        DLog(@"retrieved height");
    }
    return height;
}

- (CGRect) screenSize
{
    if(!size.size.width == 0)
        size = [[UIScreen mainScreen] bounds];
    return size;
}

@end
