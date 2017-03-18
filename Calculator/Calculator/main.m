//
//  main.m
//  Calculator
//
//  Created by Juda Cossa on 18/03/2017.
//  Copyright © 2017 Juda. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Calculator * calc = [[Calculator alloc] init];
        
        [calc add:2];
        [calc add:8];
        [calc divide:2];
        [calc subtract:2];
        [calc multiply:3];
        [calc setMemory];
        [calc add:[calc getMemory]];
        double result = [calc getAccumulator];
        NSLog(@"result = %g",result);
    }
    return 0;
}
