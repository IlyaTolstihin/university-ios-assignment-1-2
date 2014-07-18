//
//  Student.h
//  laba2
//
//  Created by Admin on 16/07/14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Human.h"
#import "CalculateAverageMark.h"

@interface Student : Human <CalculateAverageMark>
@property (nonatomic,strong,readonly)NSMutableArray* marks;
@property (nonatomic,readwrite)float averageMark;
-(void)addMark:(NSNumber*)newMark;
@end
