//
//  ContentViewDelegate.h
//  SlideMenu
//
//  Created by Lin Dennis on 13/8/9.
//  Copyright (c) 2013年 Lin Dennis. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MenuRootViewController.h"

@protocol ContentControllerDelegate

@property(nonatomic,retain) MenuRootViewController *parentViewController;

@end
