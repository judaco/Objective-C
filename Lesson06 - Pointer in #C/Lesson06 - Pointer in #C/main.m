//
//  main.m
//  Lesson06 - Pointer in #C
//
//  Created by Juda Cossa on 01/04/2017.
//  Copyright © 2017 Juda. All rights reserved.
//


#import <Foundation/Foundation.h>

void changeSomeInteger (int *x){
    *x = *x + 1;//change the position of x by reference
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int *x = 4;//x in the memory, not the value of x
        int *y = &x;
        //y = 101;//error
        *y = 101;
        NSLog(@"%i", *y);//*y will give me the address of the position of x and the value of x
        NSLog(@"%i", &y);//&y the address in the memory where y exists
        NSLog(@"%i", &x);//&x - the address in the memory where x exists
        NSLog(@"%i", x);//will print the value of y
        //conclusion - I can change primitive types (int) by reference
        
        int a = 3;
        changeSomeInteger(&a);
        NSLog(@"a=%i", a);//will give me a = 4
        
        //&x - the address in the memory where x exists * y will give me the address on x in the memory * but *y will give me the address of the position of x and the value of x
    }
    return 0;
}
