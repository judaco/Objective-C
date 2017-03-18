//
//  Fraction.m
//  Lesson02 - Fraction
//
//  Created by Juda Cossa on 18/03/2017.
//  Copyright © 2017 Juda. All rights reserved.
//

#import "Fraction.h"

//static int count = 0;//a global variable, I can use it wherever I want

@implementation Fraction

@synthesize numerator, denominator;//create getters and setters, without their visibility in my code

/*{
 int numerator;//all the params in Objective-C are private
 int denominator;
 }*/

-(void) print {
    NSLog(@"(%i,%i)", numerator, denominator);
    //count++;
}
/*
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
 */
-(double)convertToNum{
    if (denominator != 0)
        return numerator / denominator;
    else
        return NAN;
}

-(void)setTo:(int)n over:(int)d{
    numerator = n;
    denominator = d;
}

-(void) add:(Fraction *)f{//adding a fraction to another fraction
    self.numerator = self.numerator * f.denominator + self.denominator * f.numerator;
    self.denominator *=  f.denominator;
    
    [self reduce];
}

-(void) subtract:(Fraction *)f{
    numerator = numerator * f.denominator - denominator * f.numerator;
    denominator *= f.denominator;
    
    [self reduce];
}

-(void) multiply:(Fraction *)f {
    numerator *= f.numerator;
    denominator *= f.denominator;
    
    [self reduce];
}

-(void) divide:(Fraction *)f {
    numerator *= f.denominator;
    denominator *= f.numerator;
    
    [self reduce];
}

-(Fraction *) clone{
    Fraction *frac = [[Fraction alloc] init];
    frac.numerator = self.numerator;
    frac.denominator = self.denominator;
    return frac;
}

-(void) reduce {
    int u = numerator;
    int l = denominator;
    int temp;
    
    while (l)  {
        temp = u % l;
        u = l;
        l = temp;
    }
    numerator /= u;
    denominator /= u;
}
















@end

