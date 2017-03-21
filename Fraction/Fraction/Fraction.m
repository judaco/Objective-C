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

-(Fraction *) clone {//shibut
    Fraction *frac = [[Fraction alloc] init];
    frac.numerator = self.numerator;
    frac.denominator = self.denominator;
    return frac;
}

-(void) add: (Fraction*) f {
    numerator = numerator * f.denominator + denominator * f.numerator;
    denominator *= f.denominator;
}

-(void) subtract: (Fraction*) f {
    //f.numerator *= -1;
    Fraction *adverse = [[Fraction alloc] init];//adverse = negdy
    [adverse setTo: -f.numerator over: -f.denominator];
    [self add: adverse];
}

-(void) multiply: (Fraction *) f {
    numerator *= f.numerator;
    denominator *= f.denominator;
}

-(void) divide: (Fraction *) f {
    if (f.numerator == 0) {
        return;
    }
    Fraction *reciprocal = [[Fraction alloc] init];// reciprocal = hofchy
    [reciprocal setTo: f.denominator over:f.numerator];
    [self multiply: reciprocal];
}

//Euclides GCD algorithm
-(void) reduce {
    int u = numerator;
    int v = denominator;
    int temp;
    
    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }
    numerator /= u;
    denominator /= u;
}

@end
