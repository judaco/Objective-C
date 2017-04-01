//
//  main.m
//  Lesson06 - Array in #C
//
//  Created by Juda Cossa on 01/04/2017.
//  Copyright © 2017 Juda. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dog : NSObject
-(void) bark;
@end

@implementation Dog

-(void)bark {
    NSLog(@"waf... waf....");
}

@end

int sumOfElements (int * nums[], int length) {
    int sum = 0;
    for (int i = 0; i < length; i++) {
        int temp = nums[i];
        sum += temp;
        //sum += (int) nums[i];//casting of the array of nums to int, in order to not calculate the sum in bytes (instead).
        //other way is to chane the (int * nums) and - sum += *(nums+i*2) - the compiler is attending to the int as "short", +2, +2
    }
    return sum;
}

int * functionThatReturnArray() {
    int * arr[3];
    arr[0] = 5;
    arr[1] = 6;
    arr[2] = 7;
    return arr;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //        int *nums[10];
        //        for (int i = 0; i < 10; i++) {
        //            nums[i] = i+1;
        //        }
        //        NSLog(@"sum = %i", sumOfElements(nums, 10));
        //        for (int i = 0; i < 10; i++) {
        //            NSLog(@"%i", nums[i]);
        //        }
        
        //        Dog *dogs[10];
        //        for (int i = 0; i < 10; i++) {
        //            dogs [i] = [[Dog alloc] init];
        //        }
        //        for (int i =0; i < 11; i++) {
        //            Dog *d = dogs[i];
        //            if (d == nil)
        //                continue;
        //            [dogs[i] bark];
        //            NSLog(@"%i", i);
        //        }
        
        //        int *matrix[2][5];
        //        matrix[0][0] = 100;
        //        NSLog(@"%i", matrix[0][0]);
        
        int * n;
        n = functionThatReturnArray();
        NSLog(@"%i", *(n+2));//go to the address in the memory and see what exists there
        
    }
    return 0;
}
