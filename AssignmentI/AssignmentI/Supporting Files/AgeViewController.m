//
//  AgeViewController.m
//  AssignmentI
//
//  Created by Ni Tu on 22/2/2562 BE.
//  Copyright © 2562 CatDev. All rights reserved.
//

#import "AgeViewController.h"

@interface AgeViewController ()
@property (weak, nonatomic) IBOutlet UILabel *disPlay;

@end

@implementation AgeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.disPlay.text = [NSString stringWithFormat:@"%@ is %d days old.",self.yourName,self.yourAge.day];
    
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
