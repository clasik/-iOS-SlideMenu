//
//  ViewController.h
//  SlideMenu
//
//  Created by Lin Dennis on 13/8/6.
//  Copyright (c) 2013年 Lin Dennis. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MenuRootViewController : UIViewController

@property(nonatomic,retain) UIViewController *MenuController;
@property(nonatomic,retain) UIViewController *CurrentContentController;

-(BOOL)isMenuOpen;
-(void)openMenu;
-(void)closeMenu;
-(void)toggleMenu;

-(void)openContentWithContentID:(NSString*)contentID;
@end
