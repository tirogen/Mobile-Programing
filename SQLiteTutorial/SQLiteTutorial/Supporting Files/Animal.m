//
//  Animal.m
//  SQLiteTutorial
//
//  Created by Ni Tu on 14/3/2562 BE.
//  Copyright © 2562 CatDev. All rights reserved.
//

#import "Animal.h"

@implementation Animal
@synthesize name;
@synthesize description;
@synthesize imageURL;

-(id)initWithName:(NSString *)n description:(NSString *)d url:(NSString *)u{
    self.name = n;
    self.description = d;
    self.imageURL = u;
    return self;
}

@end
