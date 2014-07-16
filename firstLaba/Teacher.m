//
//  Teacher.m
//  laba1
//
//  Created by Admin on 15/07/14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import "Teacher.h"
#import "Student.h"


@implementation Teacher
-(id)initName:(NSString *)name Age:(int)age{
    self = [super initName:name Age:age];
    self.students = [[NSMutableArray alloc]init];
    return self;
}
-(void)AddTeacher:(id)newTeacher{
    NSLog(@"I am not Boss");
}
-(void)AddStudent:(id)newStudent TeacherName:(NSString *)name{
    if([newStudent isKindOfClass:[Student class]]){
        [self.students addObject:newStudent];
    }
}
-(void)Rate{
    for(id student in self.students){
        [student setRate:rand()%4+2];
    }
}

-(NSString*)description{
    return [NSString stringWithFormat: @"I am Teacher %@. I have %i students",self.name, [self.students count] ];
}
@end
