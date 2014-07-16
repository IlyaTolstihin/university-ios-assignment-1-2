//
//  Human.h
//  laba1
//
//  Created by Admin on 15/07/14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Human : NSObject

@property int age;
@property NSString* name;

-(id)initName:(NSString*)name Age:(int)age;

@end

