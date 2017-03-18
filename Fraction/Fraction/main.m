//
//  main.m
//  Fraction
//
//  Created by Juda Cossa on 18/03/2017.
//  Copyright © 2017 Juda. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *frac1 = [[Fraction alloc] init];
        Fraction *frac2 = [[Fraction alloc] init];
        Fraction *result;
        
        [frac1 setTo: 1 over: 3];
        [frac2 setTo: 4 over: 5];
        [frac1 add: frac2];
        [frac1 subtract: frac2];
        [frac1 multiply: frac2];
        [frac1 divide: frac2];
        NSLog(@"%g", [frac1 convertToNum]);
        NSLog(@"%g", [frac2 convertToNum]);
        [frac1 print];
        NSLog(@"+");
        [frac2 print];
        NSLog(@"=");
        [result print];
        
        
    }
    return 0;
}
