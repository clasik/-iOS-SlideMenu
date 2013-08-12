//
//  SecondViewController.m
//  SlideMenu
//
//  Created by Lin Dennis on 13/8/12.
//  Copyright (c) 2013年 Lin Dennis. All rights reserved.
//

#import "SecondViewController.h"
#import "ContentControllerDelegate.h"

@interface SecondViewController ()<ContentControllerDelegate>

-(IBAction)btnMenu:(id)sender;

@end

@implementation SecondViewController

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
	// Do any additional setup after loading the view.
    [self.view setBackgroundColor:[UIColor colorWithRed:0.4 green:0.4 blue:0.4 alpha:1]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)btnMenu:(id)sender
{
    [self.parentViewController toggleMenu];
}

@end
