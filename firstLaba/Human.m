//
//  Human.m
//  laba1
//
//  Created by Admin on 15/07/14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import "Human.h"



@implementation Human

-(id)initName:(NSString *)name Age:(int)age{
    self = [super init];
    self.name = name;
    self.age = age;
    return self;
}
@end
