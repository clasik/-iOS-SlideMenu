//
//  firstViewController.h
//  SlideMenu
//
//  Created by Lin Dennis on 13/8/8.
//  Copyright (c) 2013年 Lin Dennis. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MenuRootViewController.h"
#import "ContentControllerDelegate.h"

@interface firstViewController : UIViewController//<ContentControllerDelegate>

@property(nonatomic,retain) MenuRootViewController *parentViewController;

@end
