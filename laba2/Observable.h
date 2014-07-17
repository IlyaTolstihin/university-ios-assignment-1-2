//
//  Observable.h
//  laba2
//
//  Created by Admin on 16/07/14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ChangedMarkObserver.h"

@protocol Observable <NSObject>
-(void)addObserver:(id<ChangedMarkObserver>)newObserver;
@end
