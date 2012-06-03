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
}
@property (nonatomic, strong) NSDictionary *data;
@end
