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
@property (nonatomic,strong,readonly)Teacher* departmentManager;
@property (nonatomic,strong,readonly)NSMutableArray* groups;
@property (nonatomic,strong,readonly)NSMutableArray* teachers;
@property (nonatomic,readwrite)float departmentAverageMark;
-(void)addTeacher:(Teacher*)teacher;
-(void)addGroup:(Group*)group;
-(void)appointTeacher:(Teacher*)teacher toGroup:(Group*)group;
@end

@implementation Department : NSObject
-(instancetype)initWithName:(NSString *)name{
    if( self = [super init] ){
        _name = name;
        _departmentManager = [[Teacher alloc]initWithName:@"Boss" andAge:10];
        _teachers = [[NSMutableArray alloc]init];
        _groups = [[NSMutableArray alloc]init];
        [self addGroup:[[Group alloc]initWithName:@"Alpha"]];
        [self addTeacher:[[Teacher alloc]initWithName:@"Jonny" andAge:10]];
        [self addTeacher:[[Teacher alloc]initWithName:@"Clyde" andAge:10]];
        return self;
    }
    return nil;
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
    for(i=0 ; i < [self.groups count] ; i++){
        sum += [[self.groups objectAtIndex:i] averageMark];
    }
    self.departmentAverageMark = sum/i;
    return sum/i;
}
-(void)addStudent:(Student *)student toGroup:(Group *)group{
    [group addStudent:student];
}
@end
