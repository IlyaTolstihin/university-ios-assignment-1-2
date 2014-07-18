//
//  University.h
//  laba2
//
//  Created by Admin on 16/07/14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Department.h"
#import "ChangedMarkObserver.h"

@interface University : NSObject <ChangedMarkObserver>
+(University*)getInstance;
@end
