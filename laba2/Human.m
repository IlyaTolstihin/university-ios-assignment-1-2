//
//  Human.m
//  laba2
//
//  Created by Admin on 16/07/14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import "Human.h"

@implementation Human
-(instancetype)initWithName:(NSString*)name andAge:(int)age{
    if( self = [super init] ){
        _name = name;
        _age = age;
        return self;
    }
    return nil;
}
@end
