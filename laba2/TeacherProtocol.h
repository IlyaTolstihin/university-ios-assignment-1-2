//
//  TeacherProtocol.h
//  laba2
//
//  Created by Admin on 16/07/14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Group.h"

@protocol TeacherProtocol <NSObject>
-(void)addGroup:(Group*)newGroup;
-(void)rate;
@end
