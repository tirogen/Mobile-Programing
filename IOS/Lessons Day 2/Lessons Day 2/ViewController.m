//
//  ViewController.m
//  Lessons Day 2
//
//  Created by Ni Tu on 8/2/2562 BE.
//  Copyright © 2562 CatDev. All rights reserved.
//

#import "ViewController.h"

#import "BlueViewController.h"
#import "YellowViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)SwitchView:(id)sender {
    [UIView beginAnimations:@"View Flip" context:nil];
    [UIView setAnimationDuration:0.5];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    //Animation Code
    if (self.yellowViewController.view.superview == nil)
    {
        if (self.yellowViewController == nil)
            {
                UIStoryboard *storyboard =
                [UIStoryboard storyboardWithName:@"Main" bundle:nil];
                YellowViewController *yellowController =
                [storyboard
                       instantiateViewControllerWithIdentifier:@"YellowViewController"];
                self.yellowViewController = yellowController;
                
                }
        //Animation code
        [UIView setAnimationTransition:UIViewAnimationTransitionCurlUp
            forView:self.view cache:YES];
        //Animation Code
        
        [self.blueViewController.view removeFromSuperview];
        [self.view insertSubview: self.yellowViewController.view atIndex:0];
    }
    else
    {
        //Animation Code
         //Can also use these Animation Transitions:
        // UIViewAnimationTransitionFlipFromLeft
        // UIViewAnimationTransitionFlipFromRight
        // UIViewAnimationTransitionCurlUp
        // UIViewAnimationTransitionCurlDown
        
        [UIView setAnimationTransition:UIViewAnimationTransitionCurlDown
              forView:self.view cache:YES];
        //Animation Code
        
        [self.yellowViewController.view removeFromSuperview];
        [self.view insertSubview: self.blueViewController.view atIndex:0];
    }
    //Finish the animation block
    [UIView commitAnimations];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main"bundle:nil];
    BlueViewController *blueController = [storyboard instantiateViewControllerWithIdentifier:@"BlueViewController"];
    self.blueViewController = blueController;
    [self.view insertSubview:self.blueViewController.view atIndex:0];
}


@end
