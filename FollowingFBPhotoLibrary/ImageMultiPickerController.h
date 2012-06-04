//
//  ImageMultiPickerController.h
//  imin-ios
//
//  Created by KYONGJIN SEO on 5/31/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AssetsLibrary/AssetsLibrary.h>

@interface ImageMultiPickerController : UITableViewController {
    
    ALAssetsLibrary *assetsLibrary;
    NSMutableArray *groups;
    __unsafe_unretained id _delegate;
}
@property (nonatomic, assign) __unsafe_unretained id delegate;
@end
