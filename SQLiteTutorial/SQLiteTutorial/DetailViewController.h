//
//  DetailViewController.h
//  SQLiteTutorial
//
//  Created by Ni Tu on 14/3/2562 BE.
//  Copyright © 2562 CatDev. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) NSDate *detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@property (weak, nonatomic) IBOutlet UIImageView *animalImage;

@property (weak, nonatomic) IBOutlet UITextView *animalDescription;

@end

