//
//  main.m
//  Lesson06 - Closures
//
//  Created by Juda Cossa on 01/04/2017.
//  Copyright © 2017 Juda. All rights reserved.
//

#import <Foundation/Foundation.h>

//Closures - Blocks
//Blocks are Closures as we know from Swift
//Blocks are a language-level feature added to C, Objective-C and C++, which allow you to create distinct segments of code that can be passed around to methods or functions as if they were values. Blocks are Objective-C objects, which means they can be added to collections like NSArray or NSDictionary. They also have the ability to capture values from the enclosing scope, making them similar to closures or lambdas in other programming languages.

//void myFunc(){
//    NSLog(@"in myFunc()");
//}

void shalev(void (^func)(void)){//declare a variable to keep track of a block
    func();
}

void (^simpleBlock)(void);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        void (^myFunc)(void) = ^(void){
            NSLog(@"in block");
        };
        //
        //        myFunc();
        //        shalev(^{
        //            NSLog(@"in anonymous function");
        //        });
        shalev(myFunc);
        
        //This example declares a variable called simpleBlock to refer to a block that takes no arguments and doesn’t return a value, which means the variable can be assigned the block literal shown above
        simpleBlock = ^{
            NSLog(@"This is a block");
        };
        //combination of a variable and an assignment
        void (^simpleBlock)(void) = ^{
            NSLog(@"This is a block");
        };
        
        //Note: If you attempt to invoke a block using an unassigned variable (a nil block variable), your app will crash.
        
         simpleBlock();
    }
    return 0;
}
