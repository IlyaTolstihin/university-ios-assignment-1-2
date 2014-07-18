//
//  Teacher.h
//  laba2
//
//  Created by Admin on 16/07/14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Human.h"
#import "TeacherProtocol.h"
#import "ChangedMarkObserver.h"
#import "Observable.h"
@class Department;

@interface Teacher : Human <TeacherProtocol, Observable>
@property (nonatomic,strong,readonly)NSMutableArray* groups;
@property (nonatomic,weak)Department* department;
@property (nonatomic,weak)id<ChangedMarkObserver> observer;
@end
