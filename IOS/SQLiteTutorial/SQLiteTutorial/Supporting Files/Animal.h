//
//  Animal.h
//  SQLiteTutorial
//
//  Created by Ni Tu on 14/3/2562 BE.
//  Copyright © 2562 CatDev. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Animal : NSObject

@property(strong, nonatomic) NSString *name;
@property(strong, nonatomic) NSString *description;
@property(strong, nonatomic) NSString *imageURL;
-(id)initWithName:(NSString *)n description:(NSString *)d url:(NSString *)u;

@end

NS_ASSUME_NONNULL_END
