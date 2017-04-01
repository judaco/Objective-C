//
//  Fraction.h
//  Lesson02 - Fraction
//
//  Created by Juda Cossa on 18/03/2017.
//  Copyright © 2017 Juda. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject //name of the class, after : - from which I have an inheritance

@property int numerator, denominator;

-(instancetype) initWithNumerator: (int) n andDenominator:(int) d;
//methods and properties
//property - it looks like a field, but it's a method, which in the background there's a field

-(void) print;
/*
 -(void) setNumerator: (int)n;//like setter in Java
 -(void) setDenominator: (int)d;//(method) firstName: (type) name of param
 -(int) numerator;
 -(int) denominator;*/
-(void) add: (Fraction *)f;//Fraction is not a primitive, it's a class with pointers, and the function want to get a Fraction
-(double) convertToNum;
-(void) setTo: (int)n over: (int)d;//one way for 2 params
//-(void) setTo: (int)n : (int)d;//another way for 2 params
-(Fraction *) clone;//how to reback a pointer
-(void) subtract: (Fraction*) f;
-(void) multiply: (Fraction*) f;
-(void) divide: (Fraction *) f;
-(void) reduce;
