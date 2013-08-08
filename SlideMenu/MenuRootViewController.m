//
//  ViewController.m
//  SlideMenu
//
//  Created by Lin Dennis on 13/8/6.
//  Copyright (c) 2013年 Lin Dennis. All rights reserved.
//

#import "MenuRootViewController.h"

@interface MenuRootViewController ()

@property(nonatomic,retain) NSMutableArray *viewControllers;

@end

@implementation MenuRootViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self performSegueWithIdentifier:@"menu" sender:self];
    [self performSegueWithIdentifier:@"first" sender:self];
    
    [UIView animateWithDuration:0.5 animations:^(void){
        self.CurrentController.view.frame = CGRectMake(240, self.CurrentController.view.frame.origin.y, self.CurrentController.view.frame.size.width, self.CurrentController.view.frame.size.height);
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
