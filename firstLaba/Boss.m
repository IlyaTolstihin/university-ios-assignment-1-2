//
//  Demigod.m
//  laba1
//
//  Created by Admin on 15/07/14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import "Boss.h"
#import "Student.h"

@interface Boss ()
@property NSMutableArray* teachers;
@end

@implementation Boss
-(id)initName:(NSString *)name Age:(int)age{
    self = [super initName:name Age:age];
    self.teachers = [[NSMutableArray alloc]init];
    return self;
}
-(void)AddTeacher:(id)newTeacher{
    if([newTeacher isKindOfClass:[Teacher class]]){
        [self.teachers addObject:newTeacher];
    }
}
-(void)AddStudent:(id)newStudent TeacherName:(NSString *)name{
    if([self.name isEqualToString:name]){
        if([newStudent isKindOfClass:[Student class]]){
            [self.students addObject:newStudent];
        }
    }
    for(id teacher in self.teachers){
        if([[teacher name]isEqualToString:name]){
            [teacher AddStudent:newStudent TeacherName:name];
        }
    }
}
-(void)Rate{
    for(id student in self.students){
        [student setRate:rand()%4+2];
    }
    for(id teacher in self.teachers){
        [teacher Rate];
    }
}

-(NSString*)description{
    return [NSString stringWithFormat: @"I'm Boss %@",self.name];
}
@end
