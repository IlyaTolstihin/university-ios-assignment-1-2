//
//  Student.m
//  laba2
//
//  Created by Admin on 16/07/14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import "Student.h"

@implementation Student
-(NSString*)description{
    return [NSString stringWithFormat: @"I am student %@. My rate ",self.name];
}
-(float)averageMark{
    int i = 0;
    float sum = 0;
    for( i=0 ; i<[self.marks count] ; i++){
        sum +=  (int)[self.marks objectAtIndex:i];
    }
    self.studentAverageMark = (float)sum/i;
    return self.averageMark;
}
-(void)addMark:(NSNumber*)newMark{
    [self.marks addObject:newMark];
}
@end
