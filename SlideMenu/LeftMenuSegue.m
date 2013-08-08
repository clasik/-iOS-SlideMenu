//
//  LeftMenuSegue.m
//  SlideMenu
//
//  Created by Lin Dennis on 13/8/6.
//  Copyright (c) 2013年 Lin Dennis. All rights reserved.
//

#import "LeftMenuSegue.h"
#import "MenuRootViewController.h"

@implementation LeftMenuSegue

-(void)perform
{
    MenuRootViewController *rootController = self.sourceViewController;
    UIViewController *menuController = self.destinationViewController;
    
    CGRect bounds = rootController.view.bounds;
    menuController.view.frame = CGRectMake(0, 0, bounds.size.width, bounds.size.height);
    
    [menuController willMoveToParentViewController:rootController];
    [rootController addChildViewController:menuController];
    [rootController.view addSubview:menuController.view];
    [menuController didMoveToParentViewController:rootController];
    
    [rootController setMenuController:menuController];
}

@end
