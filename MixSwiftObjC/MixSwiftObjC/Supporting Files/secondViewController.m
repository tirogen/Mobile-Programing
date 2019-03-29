//
//  secondViewController.m
//  MixSwiftObjC
//
//  Created by Ni Tu on 15/3/2562 BE.
//  Copyright © 2562 CatDev. All rights reserved.
//

#import "secondViewController.h"

@interface secondViewController ()
@property (weak, nonatomic) IBOutlet UILabel *myLabel;

@end

@implementation secondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _myLabel.text = [NSString stringWithFormat:@"Hello, %@", self.castText];
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
