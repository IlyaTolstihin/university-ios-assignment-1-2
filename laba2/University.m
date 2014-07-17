//
//  University.m
//  laba2
//
//  Created by Admin on 16/07/14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import "University.h"
#import "Department.h"

@interface University ()
-(void)addDepartmentWithName:(NSString*)name;
@end

@implementation University
-(instancetype)init{
    if( self = [super init] ){
        _departments = [[NSMutableArray alloc]init];
        [self addDepartmentWithName:@"FIT"];
        return self;
    }
    return nil;
}
+(University*)getInstance{
    static University* instance = nil;
    if(instance == nil){
        instance = [[University alloc]init];
    }
    return instance;    
}
-(void)addDepartmentWithName:(NSString *)name{
    [self.departments addObject:[[Department alloc]initWithName:name]];
}
-(void)changedMark:(Department*)department{
    [department averageMark];
}
@end
