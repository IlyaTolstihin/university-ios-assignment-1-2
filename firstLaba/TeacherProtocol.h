//
//  TeacherProtocol.h
//  laba1
//
//  Created by Admin on 15/07/14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TeacherProtocol <NSObject>
-(void)AddTeacher:(id)newTeacher;
-(void)AddStudent:(id)newStudent TeacherName:(NSString*)name;
-(void)Rate;
@end
