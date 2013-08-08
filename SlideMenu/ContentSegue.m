//
//  ContentSegue.m
//  SlideMenu
//
//  Created by Lin Dennis on 13/8/7.
//  Copyright (c) 2013年 Lin Dennis. All rights reserved.
//

#import "ContentSegue.h"
#import "MenuRootViewController.h"
@implementation ContentSegue

-(void)perform
{
    MenuRootViewController *rootController = self.sourceViewController;
    UIViewController *contentController = self.destinationViewController;
    
    CGRect bounds = rootController.view.bounds;
    contentController.view.frame = CGRectMake(0, 0, bounds.size.width, bounds.size.height);
    
    [contentController willMoveToParentViewController:rootController];
    [rootController addChildViewController:contentController];
    [rootController.view addSubview:contentController.view];
    [contentController didMoveToParentViewController:rootController];
    
    [rootController setCurrentController:contentController];
}

@end
