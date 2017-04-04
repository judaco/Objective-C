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

@interface Dog : NSObject
@property int age;
-(void)bark;
@end

@implementation Dog
@synthesize age;
-(void)bark{
    NSLog(@"waf waf...");
}

@end

void shalev(void (^func)(void)){//declare a variable to keep track of a block
    func();
}

//void (^simpleBlock)(void);

void swap(int * x, int * y){
    int temp = *x;
    *x = *y;
    *y = temp;
}

void bubbleSort(int nums[], int n, int(^comparator)(int,int)){
    BOOL isSorted = NO;
    int upTo = n-1;
    while(!isSorted){
        isSorted = YES;
        for (int i=0; i<upTo; i++) {
            if(comparator(nums[i],nums[i+1]) == 1){
                isSorted = NO;
                swap(&nums[i], &nums[i+1]);
            }
        }
        upTo--;
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //This example declares a variable called simpleBlock to refer to a block that takes no arguments and doesn’t return a value, which means the variable can be assigned the block literal shown above
//        simpleBlock = ^{
//            NSLog(@"This is a block");
//        };
        //combination of a variable and an assignment
//        void (^simpleBlock)(void) = ^{
//            NSLog(@"This is a block");
//        };
        
        //Note: If you attempt to invoke a block using an unassigned variable (a nil block variable), your app will crash.
        
//         simpleBlock();
        
        //        void (^myFunc)(void) = ^(void){
        //            NSLog(@"in block");
        //        };
        //
        //        myFunc();
        //        shalev(^{
        //            NSLog(@"in anonymous function");
        //        });
        //shalev(myFunc);
        //        int (^myFunc2)(int,int) = ^(int x, int y){
        //            NSLog(@"in block");
        //            return x*2 + y;
        //        };
        //
        //        NSLog(@"%i", myFunc2(3,1));
        
        int nums[5] = {7,2,3,8,1};
        bubbleSort(nums, 5, ^int(int x, int y) {
            if(x > y)
                return 1;
            else if(x == y)
                return 0;
            else
                return -1;
        });
        for (int i=0; i<5; i++) {
            NSLog(@"%i",nums[i]);
        }
        
        int (^myFunc3) (id,id) = ^(Dog * d1, Dog * d2){
            
            if(d1.age > d2.age)
                return 1;
            else if(d1.age == d2.age)
                return 0;
            else
                return -1;
            
    }
    return 0;
}
