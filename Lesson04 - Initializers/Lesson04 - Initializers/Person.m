//
//  Person.m
//  Lesson04 - Initializers
//
//  Created by Juda Cossa on 25/03/2017.
//  Copyright © 2017 Juda. All rights reserved.
//

#import "Person.h"

static int counter = 7;

@implementation Person

+(void)stam {
    extern int globalVariable;
    globalVariable = 3;
    counter = 8;
}

@end
