//
//  main.m
//  Lesson 05 - Preprocessor
//
//  Created by Juda Cossa on 01/04/2017.
//  Copyright © 2017 Juda. All rights reserved.
//

#import <Foundation/Foundation.h>

//All preprocessor commands begin with a pound symbol (#). It must be the first nonblank character, and for readability, a preprocessor directive should begin in first column. Following section lists down all important preprocessor directives

#define AHARON 8;
//#define YES 1;
#define PI 3.1416

#undef  FILE_SIZE
#define FILE_SIZE 42//This tells the OCPP to undefine existing FILE_SIZE and define it as 42.

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int x = AHARON;
        NSLog(@"Hello, World!");
        NSLog(@"%i", x);
    }
    return 0;
}
