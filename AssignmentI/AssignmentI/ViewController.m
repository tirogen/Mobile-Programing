//
//  ViewController.m
//  AssignmentI
//
//  Created by Ni Tu on 22/2/2562 BE.
//  Copyright © 2562 CatDev. All rights reserved.
//

#import "ViewController.h"
#import "AgeViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameLabel;

@property (weak, nonatomic) IBOutlet UIDatePicker *birthDate;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    NSDate *birthdate = self.birthDate.date;
    NSDate *now = [NSDate date];
    NSDateComponents *components = [[NSCalendar currentCalendar] components:NSCalendarUnitDay fromDate:birthdate toDate:now options:0];

    AgeViewController *AV = [segue destinationViewController];
    AV.yourName = self.nameLabel.text;
    AV.yourAge = components;
}



@end
