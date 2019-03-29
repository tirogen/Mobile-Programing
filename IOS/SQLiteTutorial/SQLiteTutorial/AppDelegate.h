//
//  AppDelegate.h
//  SQLiteTutorial
//
//  Created by Ni Tu on 14/3/2562 BE.
//  Copyright © 2562 CatDev. All rights reserved.
//

#import <UIKit/UIKit.h>
//import sqlite framework
#import <sqlite3.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

//Database variables
@property(strong, retain) NSString *databaseName;
@property(strong, retain) NSString *databasePath;

//Array to store the animal objects
@property(strong, nonatomic) NSMutableArray *animals;

@property (strong, nonatomic) UIWindow *window;

@property(strong, nonatomic) UINavigationController *navigationController;

//Methods declaration
-(void)checkAndCreateDatabase;
-(void)readAnimalsFromDatabase;

@end

