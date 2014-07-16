//
//  University.m
//  laba1
//
//  Created by Admin on 15/07/14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import "University.h"

@implementation University
-(id)init{
    self = [super init];
    self.cathedras = [[NSMutableArray alloc]init];
    return self;
}
-(void)addCathedra:(id)cathedra{
    if([cathedra isKindOfClass:[Cathedra class]])
        [self.cathedras addObject:cathedra];
}
@end
