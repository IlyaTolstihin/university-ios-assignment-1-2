//
//  ChangedMarkObserver.h
//  laba2
//
//  Created by Admin on 16/07/14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol TeacherProtocol;
@class Department;

@protocol ChangedMarkObserver <NSObject>
- (void)markChangedByTeacher: (id<TeacherProtocol>)teacher inDepartment:(Department *)department;
@end
