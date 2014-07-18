//
//  Group.m
//  laba2
//
//  Created by Admin on 17/07/14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import "Group.h"

@implementation Group
@synthesize students = _students;
-(NSMutableArray*)students{
    if(!_students){
        _students = [[NSMutableArray alloc]init];
    }
    return _students;
}
-(instancetype)initWithName:(NSString*)name{
    if( self = [super init] ){
        _name = name;
    }
    return self;
}
-(void)addStudent:(Student *)student{
    [self.students addObject:student];
}
-(float)averageMark{
    int i = 0;
    float sum = 0;
    for(id student in _students){
        sum += [student averageMark];
    }
    if(!i){
        return 0.f;
    }else{
        return sum/i;
    }
}
@end
