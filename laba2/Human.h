//
//  Human.h
//  laba2
//
//  Created by Admin on 16/07/14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Human : NSObject
@property (nonatomic,readonly)int age;
@property (nonatomic,strong,readonly)NSString* name;
-(id)initWithName:(NSString*)name age:(int)age;
@end
