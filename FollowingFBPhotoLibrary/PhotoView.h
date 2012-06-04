//
//  PhotoView.h
//  FollowingFBPhotoLibrary
//
//  Created by KYONG JIN SEO on 12. 6. 3..
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PhotoView : UIImageView {
    UIButton *checkBox;
    NSDictionary *data;
    BOOL isZoomed;
    CGRect currentFrame;
    __unsafe_unretained id _delegate;
}
@property (nonatomic, strong) NSDictionary *data;
@property (nonatomic, assign) __unsafe_unretained id delegate;
@end
