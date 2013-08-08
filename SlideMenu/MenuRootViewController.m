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
        self.CurrentContentController.view.frame = CGRectMake(240, self.CurrentContentController.view.frame.origin.y, self.CurrentContentController.view.frame.size.width, self.CurrentContentController.view.frame.size.height);
    }];
}

-(void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    CGRect bounds = self.view.bounds;
    self.CurrentContentController.view.frame = CGRectMake(self.CurrentContentController.view.frame.origin.x, 0, bounds.size.width, bounds.size.height);
    
    //if (UIInterfaceOrientationIsLandscape(toInterfaceOrientation)) {
        //self.CurrentContentController.view.frame = CGRectMake(0, 0, bounds.size.width, bounds.size.height);
    //}

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
