//
//  main.m
//  Calculator
//
//  Created by Juda Cossa on 11/03/2017.
//  Copyright © 2017 Juda. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

-(double) setAccumulator: (double) n;
-(double) accumulator;
-(double) clear;

-(double) add: (double) n;
-(double) subtract: (double) n;
-(double) multiply: (double) n;
-(double) divide: (double) n;

-(double) changeSign;
-(double) reciprocal;
-(double) xSquared;

@end

@implementation Calculator {
    double accumulator;
}

-(double) setAccumulator:(double)n {
    NSLog(@"set to %f", n);
    return accumulator = n;
}

-(double) clear {
    NSLog(@"clear");
    return accumulator = 0;
}

-(double) accumulator {
    return accumulator;
}

-(double) add: (double) n {
    NSLog(@"add %f", n);
    return accumulator += n;
}

-(double) subtract: (double) n {
    NSLog(@"subtract %f", n);
    return accumulator -= n;
}

-(double) multiply: (double) n {
    NSLog(@"multiply by %f", n);
    return accumulator *= n;
}

-(double) divide: (double) n {
    if ( n == 0){
        NSLog(@"Error! impossible to divide  by 0");
        return accumulator;
    }else{
    NSLog(@"divide by %f", n);
    return accumulator /= n;
    }
}

-(double) changeSign {
    NSLog(@"change sign");
    return accumulator = -accumulator;
}

-(double) reciprocal {
    NSLog(@"reciprocal");
    return accumulator = 1/accumulator;
}

-(double) xSquared{
    NSLog(@"square");
    return accumulator *= accumulator;
}


@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        double n1, n2;
        char operator;
        
        Calculator *myCalculator = [[Calculator alloc] init];
        
        [myCalculator setAccumulator: n1];
        
        switch ( operator) {
            case '+':
                [myCalculator add: n2];
                break;
            case '-':
                [myCalculator subtract: n2];
                break;
            case '*':
                [myCalculator multiply: n2];
                break;
            case '/':
                [myCalculator divide: n2];
                break;
            default:
                NSLog(@"unkown operator");
                break;
        }
        
        printf("= %f\n",[myCalculator accumulator]);
        
        NSLog(@"Set to %g", [myCalculator setAccumulator:100.0]);
        NSLog(@"add %g = %g", 200.0, [myCalculator add:200.0]);
    }
    return 0;
}
