//
//  Calculator.m
//  Calculator
//
//  Created by Juda Cossa on 18/03/2017.
//  Copyright © 2017 Juda. All rights reserved.
//

#import "Calculator.h"


@implementation Calculator
{
    double accumulator;
    double memory;
}
-(void)clear{
    accumulator = 0.0;
}

-(void)add:(double)x{
    accumulator += x;
}

-(void)divide:(double)x{
    if(x != 0){
        accumulator /= x;
    }
}

-(void)multiply:(double)x{
    accumulator *= x;
}

-(void)subtract:(double)x{
    accumulator -= x;
}
-(double)getAccumulator{
    return accumulator;
}
-(void)setAccumulator:(double)x{
    [self clear];
    [self add:x];
}

-(double)changeSign{
    [self multiply:-1];
    return accumulator;
}

-(double)reciprocal{
    accumulator = 1.0 / accumulator;
    return accumulator;
}
-(double)square{
    [self multiply:accumulator];
    return accumulator;
}
-(void)clearMemory{
    memory = 0.0;
}
-(void)setMemory{
    memory = accumulator;
}
-(double)getMemory{
    return memory;
}

@end
