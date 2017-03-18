//
//  Calculator.h
//  Calculator
//
//  Created by Juda Cossa on 18/03/2017.
//  Copyright © 2017 Juda. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

-(void)clear;
-(void)add:(double)x;
-(void)divide:(double)x;
-(void)multiply:(double)x;
-(void)subtract:(double)x;
-(double)getAccumulator;
-(void)setAccumulator:(double)x;
-(double)changeSign;
-(double)reciprocal;
-(double)square;

-(void)clearMemory;
-(void)setMemory;
-(double)getMemory;

@end
