//
//  Student.m
//  laba1
//
//  Created by Admin on 15/07/14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import "Student.h"

@implementation Student

-(NSString*)description{
    return [NSString stringWithFormat: @"I am student %@. My rate %i",self.name,self.rate];
}
@end
