//
//  Department.h
//  laba2
//
//  Created by Admin on 16/07/14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CalculateAverageMark.h"
#import "Student.h"
#import "Group.h"

@interface Department : NSObject <CalculateAverageMark>
@property (nonatomic,strong,readonly)NSString* name;
-(void)addStudent:(Student*)student toGroup:(Group*)group;
-(id)initWithName:(NSString*)name;
@end
