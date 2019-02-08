//
//  ViewController.m
//  SegueDemo
//
//  Created by Ni Tu on 8/2/2562 BE.
//  Copyright © 2562 CatDev. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textName;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if([segue.identifier isEqualToString:@"detailSegue"]){
        DetailViewController *destVC = [segue destinationViewController];
        destVC.theName = self.textName.text;
    }
}

@end
