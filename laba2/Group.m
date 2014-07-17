//
//  Group.m
//  laba2
//
//  Created by Admin on 17/07/14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import "Group.h"

@implementation Group
-(instancetype)initWithName:(NSString*)name{
    if( self = [super init] ){
        _name = name;
        _students = [[NSMutableArray alloc]init];
        return self;
    }
    return nil;
}
-(void)addStudent:(Student *)student{
    [self.students addObject:student];
}
-(float)averageMark{
    int i = 0;
    float sum = 0;
    for(i=0 ; i < [self.students count] ; i++){
        sum += [[self.students objectAtIndex:i] averageMark];
    }
    return sum/i;
}
@end
