//
//  PhotoContentViewController.m
//  FollowingFBPhotoLibrary
//
//  Created by KYONG JIN SEO on 12. 6. 3..
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "PhotoContentViewController.h"
#import "PhotoView.h"
#import "PhotoViewer.h"
#import "ImageMultiPickerController.h"
@implementation PhotoContentViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        tempPhotoArray = [[NSArray alloc] initWithObjects:@"1", @"2",@"3",@"4",@"1",@"1",@"1",@"1",@"1",@"1",@"1",@"1",@"1",@"1",@"1",@"1",@"1",@"1",@"1",@"1",@"1",@"1",@"1",@"1",@"1",@"1",@"1", nil];    //photoview array
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
    [super loadView];
    mainScrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 320.0f, 460.0f)];
    mainScrollView.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:mainScrollView];
    
    CGFloat height = 10.0f;
    for (int i = 0; i < tempPhotoArray.count; i++) {
        NSInteger indexRow = (NSInteger)(i / 4);
        NSInteger indexPhoto = (NSUInteger)(i % 4);
        PhotoView *image = [[PhotoView alloc] initWithFrame:CGRectMake(0.0f + ((height + 38.0f) * indexPhoto), 0.0f + ((38.0f+height) *indexRow), 38.0f, 38.0f)];
        image.backgroundColor = [UIColor blackColor];
        image.userInteractionEnabled = YES;
        image.delegate = self;
        [mainScrollView addSubview:image];
    }
}


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)showPhotoView:(PhotoView*)photo {
    PhotoViewer * vc = [[PhotoViewer alloc] initWithNibName:@"PhotoViewer" bundle:nil];
//    vc.photos = [[NSMutableArray alloc] initWithArray:tempPhotoArray];
    
    //    nv.view.frame = photo.frame;
    [self.view addSubview:vc.view];
//    nv.view.hidden = YES;
//    [UIView beginAnimations:nil context:nil];
//    [UIView setAnimationDuration:0.5];
//    nv.view.hidden = NO;
//    nv.view.frame = CGRectMake(0.0f, 0.0f, 320.0f, 460.0f);
//    [UIView commitAnimations];
    
//    UIViewController *vc = [[UIViewController alloc] init];
//    UIButton *bt = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//    bt.frame = CGRectMake(0.0f, 0.0f, 100.0f, 30.0f);
//    [bt addTarget:self action:@selector(test:) forControlEvents:UIControlEventTouchUpInside];
//    [vc.view addSubview:bt];
//    [self presentModalViewController:nv animated:YES];
}

- (void)previousThumnail:(id)sender {
    NSLog(@"설마여기?");
}
@end
