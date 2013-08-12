//
//  LeftMenuSegue.m
//  SlideMenu
//
//  Created by Lin Dennis on 13/8/6.
//  Copyright (c) 2013年 Lin Dennis. All rights reserved.
//

#import "LeftMenuSegue.h"
#import "MenuRootViewController.h"
#import "MenuControllerDelegate.h"

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
    
    if([menuController respondsToSelector:@selector(setParentViewController:)])
    {
        [menuController performSelector:@selector(setParentViewController:) withObject:rootController];
    }
    
    if([menuController conformsToProtocol:@protocol(MenuControllerDelegate)])
    {
        id<MenuControllerDelegate> menuDelegate = (id<MenuControllerDelegate>)menuController;
        NSString *segueid = [menuDelegate DefaultContentViewControllerSegueID];
        [rootController performSegueWithIdentifier:segueid sender:rootController];
    }
}

@end
