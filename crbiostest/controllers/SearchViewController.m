//
//  SearchViewController.m
//  crbiostest
//
//  Created by  on 7/6/16.
//  Copyright © 2016 thieumao. All rights reserved.
//

#import "SearchViewController.h"

@interface SearchViewController ()

@end

@implementation SearchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self styleNavBar];
}

- (void)styleNavBar {
    // 1. hide the existing nav bar
    [self.navigationController setNavigationBarHidden:YES animated:NO];

    // 2. create a new nav bar and style it
    UINavigationBar *newNavBar = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.bounds), 64.0)];
    [newNavBar setTintColor:[UIColor whiteColor]];

    // 3. add a new navigation item w/title to the new nav bar
    UINavigationItem *newItem = [[UINavigationItem alloc] init];
    newItem.title = @"Search";
    UIView *backView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 10, 10)];
    backView.backgroundColor = [UIColor blueColor];
    newItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSearch target:self action:@selector(backButtonTapped:)];
    newItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:backView];
    [newNavBar setItems:@[newItem]];

    // 4. add the nav bar to the main view
    [self.view addSubview:newNavBar];
}

- (void)backButtonTapped:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

@end
