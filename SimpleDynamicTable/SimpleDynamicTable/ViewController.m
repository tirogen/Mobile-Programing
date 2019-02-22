//
//  ViewController.m
//  SimpleDynamicTable
//
//  Created by Ni Tu on 15/2/2562 BE.
//  Copyright © 2562 CatDev. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *theLabel;
@property (weak, nonatomic) IBOutlet UILabel *theRow;
@property (weak, nonatomic) IBOutlet UILabel *theSection;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.theLabel.text = [NSString stringWithFormat:@"Hello, %@", self.theName];
    self.theRow.text=self.RowID;
    self.theSection.text=self.SecID;
}


@end
