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
@property (nonatomic,strong,readonly) NSMutableArray*  departments;
-(void)addDepartmentWithName:(NSString*)name;
@end

@implementation University
@synthesize departments = _departments;
-(NSMutableArray*)departments{
    if(!_departments){
        _departments = [[NSMutableArray alloc]init];
    }
    return _departments;
}
-(instancetype)init{
    if( self = [super init] ){
        [self addDepartmentWithName:@"FIT"];
    }
    return self;
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
-(void)markChangedByTeacher:(id<TeacherProtocol>)teacher inDepartment:(Department *)department{
    [department averageMark];
}
@end
