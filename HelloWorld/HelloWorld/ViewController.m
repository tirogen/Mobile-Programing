//
//  ViewController.m
//  eiei
//
//  Created by student on 1/25/2562 BE.
//  Copyright (c) 2562 Chula. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UILabel *labelEiei;

@property (strong, nonatomic) IBOutlet UITextField *textEiei;


@property (strong, nonatomic) IBOutlet UISwitch *switchEiei;

- (IBAction)longPress:(id)sender;

- (IBAction)clickEiei:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.labelEiei.text = @"hello progmath";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)longPress:(id)sender {
    self.labelEiei.text = @"bye eiei";
}

- (IBAction)clickEiei:(id)sender {
    NSString *name = self.textEiei.text;
    NSLog(@"name - %@", name);
    NSLog(@"switch - %i", self.switchEiei.isOn);
    NSString *first = self.switchEiei.isOn ? @"Hello" : @"Sawadee";
    NSString *greeting = [NSString stringWithFormat:@"%@ %@",first, name];
    NSLog(@"greeting - %@", greeting);
    self.labelEiei.text = greeting;
}
@end
