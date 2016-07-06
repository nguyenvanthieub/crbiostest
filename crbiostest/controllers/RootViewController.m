//
//  RootViewController.m
//  crbiostest
//
//  Created by  on 7/6/16.
//  Copyright © 2016 thieumao. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)awakeFromNib {
//    self.menuPrefersStatusBarHidden = UIStatusBarStyleLightContent;
//    self.contentViewShadowColor = [UIColor blackColor];
//    self.contentViewShadowOffset = CGSizeMake(0.F, 0.F);
//    self.contentViewShadowOpacity = 0.6F;
//    self.contentViewShadowRadius = 12.F;
//    self.contentViewShadowEnabled = YES;
    self.contentViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"NavigationViewController"];
    self.leftMenuViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"LeftMenuViewController"];
    self.delegate = self;
}

#pragma mark - RESideMenu Delegate

- (void)sideMenu:(RESideMenu *)sideMenu willShowMenuViewController:(UIViewController *)menuViewController {
    NSLog(@"willShowMenuViewController");
}

- (void)sideMenu:(RESideMenu *)sideMenu didShowMenuViewController:(UIViewController *)menuViewController {
    NSLog(@"didShowMenuViewController");
}

- (void)sideMenu:(RESideMenu *)sideMenu willHideMenuViewController:(UIViewController *)menuViewController {
    NSLog(@"willHideMenuViewController");
}

- (void)sideMenu:(RESideMenu *)sideMenu didHideMenuViewController:(UIViewController *)menuViewController {
    NSLog(@"didHideMenuViewController");
}

@end
