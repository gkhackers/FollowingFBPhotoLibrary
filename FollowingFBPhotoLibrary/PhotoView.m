//
//  PhotoView.m
//  FollowingFBPhotoLibrary
//
//  Created by KYONG JIN SEO on 12. 6. 3..
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "PhotoView.h"
@implementation PhotoView 
@synthesize data;
@synthesize delegate = _delegate;

- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        NSLog(@"??");
        currentFrame = frame;

    }
    return self;
}


- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    NSLog(@"!!");

    if (isZoomed) {
//        [UIView beginAnimations:nil context:nil];
//        [UIView setAnimationDuration:0.5];
//        self.frame = currentFrame;
//        [UIView commitAnimations];
        isZoomed = NO;
    } else {        
//        [UIView beginAnimations:nil context:nil];
//        [UIView setAnimationDuration:0.5];
//        self.frame = CGRectMake(0.0f, 0.0f, 320.0f, 460.0f);
//        [UIView commitAnimations];
        isZoomed = YES;
    }
    if ([_delegate respondsToSelector:@selector(showPhotoView:)]) {
        [_delegate performSelector:@selector(showPhotoView:) withObject:self];
    }
}

@end
