//
//  University.h
//  laba1
//
//  Created by Admin on 15/07/14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Cathedra.h"

@interface University : NSObject
@property NSMutableArray* cathedras;
-(void)addCathedra:(id)cathedra;
@end
