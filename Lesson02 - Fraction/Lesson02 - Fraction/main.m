//
//  main.m
//  Lesson02 - Fraction
//
//  Created by Juda Cossa on 18/03/2017.
//  Copyright © 2017 Juda. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
     
        Fraction *myFraction;
        
        myFraction = [Fraction alloc];
        myFraction = [myFraction init];
        
        
        [myFraction setNumerator:1];
        [myFraction setDenominator:3];
        
        [myFraction print];
        
        
        Fraction *myFraction2 = [[Fraction alloc] init];
        [myFraction2 setNumerator:3];
        [myFraction2 setDenominator:7];
        
        myFraction2.numerator = 3;
        NSLog(@"numerator = %i", myFraction2.numerator);
        
        [myFraction2 print];
        
        [myFraction2 setTo:3 over:7];
        
        id myObject = myFraction2;
        
        Fraction *myFraction3 = (Fraction *)myObject;
        [myFraction3 print];
        
        [myFraction setTo:2 over:3];
        [myFraction2 setTo:4 over:6];
        [myFraction2 add:myFraction];
        [myFraction print];
        [myFraction2 print];
        
        Fraction *juda = [myFraction2 clone];

    }
    return 0;
}
