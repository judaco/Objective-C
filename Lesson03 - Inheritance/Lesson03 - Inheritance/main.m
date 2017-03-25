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
-(void) printX: (int) c;
-(void) printX: (int) c and: (int) d;

@end

@implementation ClassB

-(void)printX {
    NSLog(@"x = %i", x);
}

-(void)printX:(int)c{
    NSLog(@"test1");
}

-(void)printX:(int)c and:(int)d {
    NSLog(@"test2");
}

-(void)initX {
    x = 200;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ClassB *b = [[ClassB alloc] init];
        [b initX];
        [b printX];
        [b printX: 3];
        [b printX: 3 and:5];
        
        ClassA *a = [[ClassB alloc] init];
        [a initX];
        
        Rectangle *s1 = [[Square alloc] init];
        //BOOL respondsToSetSide = [s1 respondsToSelector: NSSelectorFromString(@"setSide:")];
        //if (respondsToSetSide) {
        //   [s1 setSide: 7];
        [s1 setWidth:7 andHeight:3];
        NSLog(@"area is %i", [s1 area]);
        //}
        
        XYPoint *o = [[XYPoint alloc] init];
        [s1 setOrigin: o];
        
        BOOL isKindOfRectangle = [s1 isKindOfClass:[Rectangle class]];
        BOOL isKindOfSquare = [s1 isKindOfClass:[Square class]];
        NSLog(@"%i %i", isKindOfRectangle, isKindOfSquare);
        
        if ([a class] == [b class]) {
            NSLog(@"a and b are the same class");
        }else{
            NSLog(@"a and b are NOT the same class");
        }
        
        @try {
            [b performSelector: NSSelectorFromString(@"printX")];
        } @catch (NSException *exception) {
            NSLog(@"haval %@", [exception description]);//example with String, if the method in the memory is not appearing, then i'll get an error message of unrecognized method of my name "Juda", but when I put a "printX", then I\ll get the value of x in the memory.
        } @finally {
        }
        
        NSLog(@"done");
    }
    return 0;
}











