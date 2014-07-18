//
//  Teacher.m
//  laba2
//
//  Created by Admin on 16/07/14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import "Teacher.h"
#import "Student.h"

@implementation Teacher
@synthesize groups = _groups;
-(NSMutableArray*)groups{
    if(!_groups){
        _groups = [[NSMutableArray alloc]init];
    }
    return _groups;
}
-(void)addGroup:(id)newGroup{
    [self.groups addObject:newGroup];
}
-(void)rate{
    for(id group in _groups){
        for(id student in [group students]){
            [student addMark:[NSNumber numberWithInt:rand()%4+2]];
        }
    }
    [self.observer markChangedByTeacher:self inDepartment:self.department];
}
-(void)addObserver:(id<ChangedMarkObserver>)newObserver{
    self.observer = newObserver;
}

-(NSString*)description{
    return [NSString stringWithFormat: @"I am Teacher %@. I have %i groups",self.name, (int)[self.groups count] ];
}
@end
