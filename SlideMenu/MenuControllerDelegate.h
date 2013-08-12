//
//  MenuDelegate.h
//  SlideMenu
//
//  Created by Lin Dennis on 13/8/12.
//  Copyright (c) 2013年 Lin Dennis. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MenuRootViewController.h"

@protocol MenuControllerDelegate

@optional
@property(nonatomic,retain) MenuRootViewController *parentViewController;

@required
-(NSString*)DefaultContentViewControllerSegueID;

@end
