//
//  Department.h
//  laba2
//
//  Created by Admin on 16/07/14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol CalculateAverageMark;
@class Student;
#import "Group.h"
#import "Teacher.h"

@interface Department : NSObject <CalculateAverageMark>
@property (nonatomic,strong,readonly)NSString* name;
@property (nonatomic,strong,readonly)Teacher* departmentManager;
@property (nonatomic,strong,readonly)NSMutableArray* groups;
@property (nonatomic,strong,readonly)NSMutableArray* teachers;
-(id)initWithName:(NSString*)name;
@end
