//
//  RootViewController.m
//  MenuSkype
//
//  Created by Charles-Hubert Basuiau on 01/07/2014.
//  Copyright (c) 2014 Charles-Hubert Basuiau. All rights reserved.
//

#import "RootViewController.h"
#import "MenuSkypeViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FourthViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSArray *menuItems = @[@"First", @"Second", @"Third", @"Fourth"];
    NSArray *contentItems = @[[[FirstViewController  alloc] init],
                     [[SecondViewController alloc] init],
                     [[ThirdViewController  alloc] init],
                     [[FourthViewController alloc] init]];
    
    CGRect contentFrame = self.view.bounds;
    contentFrame.origin.y += 20.0;
    contentFrame.size.height -= 20.0;
    
    MenuSkypeViewController *menuVC = [[MenuSkypeViewController alloc] init];
    [menuVC.view setFrame:contentFrame];
    [menuVC setMenuItems:menuItems contentItems:contentItems];
    [menuVC setMenuPosition:MenuBottom];

    [self addChildViewController:menuVC];
    [self.view addSubview:menuVC.view];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
