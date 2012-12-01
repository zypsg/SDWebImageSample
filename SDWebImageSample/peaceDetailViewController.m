//
//  peaceDetailViewController.m
//  SDWebImageSample
//
//  Created by zhaoyp on 12/1/12.
//  Copyright (c) 2012 zhaoyp. All rights reserved.
//

#import "peaceDetailViewController.h"
#import <SDWebImage/UIImageView+WebCache.h>

@interface peaceDetailViewController ()
- (void)configureView;
@end

@implementation peaceDetailViewController
@synthesize imageURL = _imageURL;
@synthesize imageView = _imageView;

 

#pragma mark - Managing the detail item

- (void)setImageURL:(NSURL *)imageURL
{
    if (_imageURL != imageURL)
    {
        _imageURL = imageURL;
        [self configureView];
    }
}

- (void)configureView
{
    if (self.imageURL)
    {
        [self.imageView setImageWithURL:self.imageURL placeholderImage:nil options:SDWebImageProgressiveDownload];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}
- (void)viewDidUnload
{
    [super viewDidUnload];
    self.imageView = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Detail", @"Detail");
    }
    return self;
}
							
@end
