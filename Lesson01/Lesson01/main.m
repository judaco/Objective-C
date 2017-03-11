//
//  main.m
//  Lesson01
//
//  Created by Juda Cossa on 11/03/2017.
//  Copyright © 2017 Juda. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject //name of the class, after : - from which I have an inheritance

//methods and properties
-(void) print;
-(void) setNumerator: (int)n;//like setter in Java
-(void) setDenominator: (int)d;//(method) firstName: (type) name of param
-(int) numerator;
-(int) denominator;

@end

@implementation Fraction
{
    int numerator;//all the params in Objective-C are private
    int denominator;
}

-(void)print{
    NSLog(@"(%i/,%i)", numerator, denominator);
}

-(void)setNumerator:(int)n{
    numerator = n;
}

-(void)setDenominator:(int)d{
    denominator = d;
}

-(int)numerator{
    return numerator;
}

-(int)denominator{
    return denominator;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        /*NSLog(@"I hope you will\n like Objective-C");
         int sum, value1, value2;
         value1 = 10;
         value2 = 30;
         sum = value1 + value2;
         NSLog(@"The sum of %i and %i is %i", value1, value2, sum);
         
         //[ClassOrInstance method];
         //[receiver message];
         //int radius = [myCircle getRadius]
         
         int numerator = 1;
         int denominator = 3;
         NSLog(@"The fraction is %i/%i", numerator, denominator);
         
         */
        
        Fraction *myFraction;//for pointers we are putting a "*"
        myFraction = [Fraction alloc];//allocate a place in the memory
        myFraction = [myFraction init];//initialize the place in the memory = both of them it's like a "new" in Java
        
        [myFraction setNumerator:1];
        [myFraction setDenominator:3];
        
        Fraction *myFraction2 = [[Fraction alloc] init];//how to make it in one line
        [myFraction2 setNumerator:3];
        [myFraction2 setDenominator:7];
        
        [myFraction2 print];
        
        int myInt = 5;
        float myFloat = 45.6f;
        //  \n - break line
        char myChar = 'T';
        double myDouble = 1.23e+4;
        
        NSLog(@"myInt is %i", myInt);
        NSLog(@"myFloat is %f", myFloat);
        NSLog(@"myDouble is %e", myDouble);//could add some 0 from right side
        NSLog(@"myDouble is %g", myDouble);
        NSLog(@"myChar is %c", myChar);
        
        long int myLong = 10000000000L;
        NSLog(@"myLong is %li", myLong);
        
        long long int myVeryLong = 10000000000000L;
        NSLog(@"myVeryLong is %lli", myVeryLong);
        
        short int myShort = 32000;
        NSLog(@"myShort is %hi", myShort);
        
        unsigned int myUnsigenedInt = 400000000 ;//not at the same max value of int as number
        NSLog(@"myUnsignedInt is %u", myUnsigenedInt);
        
        //id myObject;//can point on pointer, but on ANY type that I want
        
        int x = 5;
        int y = 6;
        float z = (float)(x+y) / (float)2;
        NSLog(@"z=%f", z);
        
    }
    return 0;
}
