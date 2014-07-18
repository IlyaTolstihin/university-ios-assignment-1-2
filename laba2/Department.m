//
//  Department.m
//  laba2
//
//  Created by Admin on 16/07/14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import "Department.h"
#import "Teacher.h"
#import "Group.h"

@interface Department ()

@property (nonatomic,readwrite)float departmentAverageMark;
-(void)addTeacher:(Teacher*)teacher;
-(void)addGroup:(Group*)group;
-(void)appointTeacher:(Teacher*)teacher toGroup:(Group*)group;
@end

@implementation Department : NSObject
@synthesize teachers = _teachers;
@synthesize groups = _groups;
-(NSMutableArray*)groups{
    if(!_groups){
        _groups = [[NSMutableArray alloc]init];
    }
    return _groups;
}
-(NSMutableArray*)teachers{
    if(!_teachers){
        _teachers = [[NSMutableArray alloc]init];
    }
    return _teachers;
}
-(instancetype)initWithName:(NSString *)name{
    if( self = [super init] ){
        _name = name;
        _departmentManager = [[Teacher alloc]initWithName:@"Boss" age:10];
        [self addGroup:[[Group alloc]initWithName:@"Alpha"]];
        [self addTeacher:[[Teacher alloc]initWithName:@"Jonny" age:10]];
        [self addTeacher:[[Teacher alloc]initWithName:@"Clyde" age:10]];
    }
    return self;
}
-(void)addTeacher:(Teacher*)teacher{
    [teacher setDepartment:self];
    [self.teachers addObject:teacher];
}
-(void)addGroup:(Group*)group{
    [self.groups addObject:group];
}
-(void)appointTeacher:(Teacher *)teacher toGroup:(Group *)group{
    [teacher addGroup:group];
}
-(float)averageMark{
    int i = 0;
    float sum = 0;
    for(id group in _groups){
        sum += [group averageMark];
    }
    if(!i){
        self.departmentAverageMark = 0;
    }else{
        self.departmentAverageMark = sum/i;
    }
    return self.departmentAverageMark;
}
@end
