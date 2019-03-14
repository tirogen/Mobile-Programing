//
//  ViewController.m
//  PList
//
//  Created by Ni Tu on 15/3/2562 BE.
//  Copyright © 2562 CatDev. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    // create a pointer to a mutable dictionary
    // You need mutable dictionary to write data
    NSMutableDictionary *dictionary;
    
    // read "myList.plist" from application bundle
    NSString *path = [[NSBundle mainBundle] bundlePath];
    NSString *finalPath = [path stringByAppendingPathComponent:@"myList.plist"];
    dictionary = [NSMutableDictionary dictionaryWithContentsOfFile:finalPath];
    
    //READING a pList
    //---------------------------------------------------------
    // dump the contents of the dictionary to the console
    // you can also dump it to anything i.e screen or tableView
    
    for (id key in dictionary) {
        NSLog(@"bundle: key=%@, value=%@", key, [dictionary objectForKey:key]);
    }

}


@end
