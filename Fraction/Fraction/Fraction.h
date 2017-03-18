//
//  Fraction.h
//  Fraction
//
//  Created by Juda Cossa on 18/03/2017.
//  Copyright © 2017 Juda. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

@property int numerator, denominator;

-(void) print;
//-(void) setNumerator: (int) n;
//-(void) setDenominator: (int) d;
-(void) setTo: (int) n over: (int) d;
-(double) convertToNum;
-(void) add: (Fraction*) f;
-(void) subtract: (Fraction*) f;
-(void) multiply: (Fraction*) f;
-(void) divide: (Fraction *) f;
-(void) reduce;

@end
