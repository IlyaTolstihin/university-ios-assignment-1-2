//
//  Teacher.m
//  laba2
//
//  Created by Admin on 16/07/14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import "Teacher.h"
#import "Student.h"

@implementation Teacher
-(instancetype)initWithName:(NSString *)name andAge:(int)age{
    if( self = [super initWithName:name andAge:age] ){
        _groups = [[NSMutableArray alloc]init];
        return self;
    }
    return nil;
}
-(void)addGroup:(id)newGroup{
    [self.groups addObject:newGroup];
}
-(void)rate{
    int i = 0;
    int j = 0;
    for(i=0 ; i < [self.groups count] ; i++){
        for(j=0 ; j < [[[self.groups objectAtIndex:i] students] count] ; j++){
            [[[[self.groups objectAtIndex:i] students] objectAtIndex:j] addMark:[[NSNumber alloc]initWithInt:rand()%4+2]];
        }
    }
    [self.observer changedMark:self.department];
}
-(void)addObserver:(id<ChangedMarkObserver>)newObserver{
    self.observer = newObserver;
}

-(NSString*)description{
    return [NSString stringWithFormat: @"I am Teacher %@. I have %i groups",self.name, (int)[self.groups count] ];
}
@end
