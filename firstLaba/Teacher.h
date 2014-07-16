//
//  Teacher.h
//  laba1
//
//  Created by Admin on 15/07/14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import "Human.h"
#import "TeacherProtocol.h"

@interface Teacher : Human <TeacherProtocol>
@property NSMutableArray* students;
@end

