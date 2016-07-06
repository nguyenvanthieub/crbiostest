//
//  HomeViewController.m
//  crbiostest
//
//  Created by  on 7/6/16.
//  Copyright © 2016 thieumao. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@property (nonatomic, strong) UISearchBar *searchBar;
@property (nonatomic, strong) UIBarButtonItem *searchItem;

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self styleNavBar];
}

- (void)styleNavBar {
    [self.navigationController setNavigationBarHidden:YES animated:NO];
    UINavigationBar *newNavBar = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.bounds), 64.0)];
    [newNavBar setTintColor:[UIColor whiteColor]];
    UINavigationItem *newItem = [[UINavigationItem alloc] init];
    newItem.title = @"Home";

    newItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSearch target:self action:@selector(searchButtonTapped:)];
    
    [newNavBar setItems:@[newItem]];
    [self.view addSubview:newNavBar];
}

- (void)searchButtonTapped:(id)sender {
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *vc = [sb instantiateViewControllerWithIdentifier:@"SearchViewController"];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
