//
//  main.m
//  laba1
//
//  Created by Admin on 15/07/14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "University.h"
#import "Human.h"
#import "Student.h"
#import "Teacher.h"
#import "Boss.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        University* uni = [[University alloc]init];
        Cathedra* cathedra = [[Cathedra alloc]init];
        Boss* boss = [[Boss alloc]initName:@"Jonny" Age:40];
        Teacher* teacher = [[Teacher alloc]initName:@"Clyde" Age:30];
        Student* student = [[Student alloc]initName:@"Franky" Age:20];
        
        [uni addCathedra:cathedra];
        [cathedra setBoss:boss];
        [teacher AddStudent:student TeacherName:@"te"];
        [teacher AddTeacher:teacher];
        [boss AddTeacher:teacher];
        [boss AddStudent:student TeacherName:@"te"];
        return 0;
    }

}

