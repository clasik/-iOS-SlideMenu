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

@property(nonatomic) BOOL isOpen;

@end

@implementation MenuRootViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self performSegueWithIdentifier:@"menu" sender:self];
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
-(void)openContentWithContentID:(NSString *)contentID
{
    [self performSegueWithIdentifier:contentID sender:self];
}
-(void)openMenu
{
    [UIView animateWithDuration:0.2 animations:^(void){
        self.CurrentContentController.view.frame = CGRectMake(240, self.CurrentContentController.view.frame.origin.y, self.CurrentContentController.view.frame.size.width, self.CurrentContentController.view.frame.size.height);
    } completion:^(BOOL finished){
        self.isOpen = true;
    }];
}

-(void)closeMenu
{
    [UIView animateWithDuration:0.2 animations:^(void){
        self.CurrentContentController.view.frame = CGRectMake(0, self.CurrentContentController.view.frame.origin.y, self.CurrentContentController.view.frame.size.width, self.CurrentContentController.view.frame.size.height);
    } completion:^(BOOL finished){
        self.isOpen = false;
    }];
}

-(void)toggleMenu
{
    if(self.isOpen)
        [self closeMenu];
    else
        [self openMenu];    
}

-(BOOL)isMenuOpen
{
    return self.isOpen;
}

-(void)panContentView:(UIPanGestureRecognizer*)gesture
{
    UIGestureRecognizerState state = gesture.state;
    CGPoint translation = [gesture translationInView:gesture.view];
    int finalX = gesture.view.frame.origin.x + translation.x;
    if(finalX < 0)finalX = 0;
    
    [UIView animateWithDuration:0.2 animations:^(void){
        self.CurrentContentController.view.frame = CGRectMake(finalX, self.CurrentContentController.view.frame.origin.y, self.CurrentContentController.view.frame.size.width, self.CurrentContentController.view.frame.size.height);
    } completion:^(BOOL finished){
        if(state == UIGestureRecognizerStateEnded)
        {
            float width = self.view.bounds.size.width;
            if(finalX >= width / 2)
                [self openMenu];
            else
                [self closeMenu];
        }
    }];
    [gesture setTranslation:CGPointMake(0, 0) inView:gesture.view];
}
@end
