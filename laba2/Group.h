//
//  Group.h
//  laba2
//
//  Created by Admin on 17/07/14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "CalculateAverageMark.h"

@interface Group : NSObject <CalculateAverageMark>
@property (nonatomic,strong,readonly)NSString* name;
@property (nonatomic,strong,readonly)NSMutableArray* students;
-(id)initWithName:(NSString*)name;
-(void)addStudent:(Student*)student;
@end
