//
//  Fraction.m
//  Fraction
//
//  Created by Juda Cossa on 18/03/2017.
//  Copyright © 2017 Juda. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

@synthesize numerator, denominator;

-(void) print {
    NSLog(@"%i/%i", numerator, denominator);
}

/*-(void) setNumerator: (int) n {
    numerator = n;
}

-(void) setDenominator: (int) d {
    denominator = d;
}*/

-(void) setTo: (int) n over: (int) d {
    numerator = n;
    denominator = d;
}

-(double) convertToNum {
    if ( denominator != 0 )
        return numerator / denominator;
    else
        return NAN;
}

-(void) add: (Fraction*) f {
    Fraction *result = [[Fraction alloc] init];
    numerator = numerator * f.denominator + denominator * f.numerator;
    denominator *= f.denominator;
    
    [self reduce];
}

-(void) subtract: (Fraction*) f {
    numerator = numerator * f.denominator - denominator * f.numerator;
    denominator *= f.denominator;
    
    [self reduce];
}

-(void) multiply: (Fraction *) f {
    numerator *= f.numerator;
    denominator *= f.denominator;
    
    [self reduce];
}

-(void) divide: (Fraction *) f {
    numerator *= f.denominator;
    denominator *= f.numerator;
    
    [self reduce];
}

//Euclides GCD algorithm
-(void) reduce {
    int u = numerator;
    int l = denominator;
    int temp;
    
    while (l) {
        temp = u % l;
        u = l;
        l = temp;
    }
    numerator /= u;
    denominator /= u;
}

@end
