//
//  main.m
//  Lesson03 - Inheritance
//
//  Created by Juda Cossa on 21/03/2017.
//  Copyright © 2017 Juda. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Square.h"
#import "XYPoint.h"

@interface ClassA : NSObject
{
    int x;
}

-(void) initX;

@end

@implementation ClassA


-(void)initX {
    x = 100;
}

@end

@interface ClassB : ClassA

-(void) printX;

@end

@implementation ClassB

-(void)printX {
    NSLog(@"x = %i", x);
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        ClassB *b = [[ClassB alloc] init];
//        [b initX];
//        [b printX];
//        
//        ClassA *a = [[ClassB alloc] init];
//        [a initX];
        
        Square *s1 = [[Square alloc] init];
        [s1 setSide: 7];
        NSLog(@"area is %i", [s1 area]);
        
        XYPoint *o = [[XYPoint alloc] init];
        [s1 setOrigin: o];
        
    }
    return 0;
}











