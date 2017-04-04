//
//  main.m
//  Lesson07 - Arrays in #C
//
//  Created by Juda Cossa on 04/04/2017.
//  Copyright © 2017 Juda. All rights reserved.
//

#import <Foundation/Foundation.h>

void handleArray(int num[], int n){
    for (int i=0; i < n; i++) {
        NSLog(@"element = %i", num[i]);
    }
}

int * returnArray(){
    int arr[3];
    arr[0] = 5;
    arr[1] = 6;
    arr[2] = 7;
    return &arr;
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /*
         int x = 5;
         int * y = &x;
         NSLog(@"%i", x);
         NSLog(@"%i", y);
         NSLog(@"%i", *y);
         NSLog(@"%i", &x);
         NSLog(@"%i", &y);
         */
        
        int nums[10];
        NSLog(@"size of nums=%i", sizeof(nums));
        
        for (int i=0; i<10; i++) {
            nums[i] = i+1;
            //*(nums+i) = i + 1;
        }
        
        handleArray(nums, 10);
        
        int sizeOfInt = sizeof(int);
        NSLog(@"sizeOfInt=%i", sizeOfInt);
        
        int * arr = returnArray();
        for (int i=0; i<3; i++) {
            NSLog(@"arr[i]=%i",*(arr+i));
        }
        
        NSMutableArray<NSNumber *> * numbers = [[NSMutableArray<NSNumber*> alloc] init];
        [numbers addObject:[NSNumber numberWithInt:5]];
        [numbers addObject:[NSNumber numberWithInt:6]];
        [numbers addObject:[NSNumber numberWithInt:7]];
        for (int i=0; i<numbers.count; i++) {
            NSNumber * number = numbers[i];
            int x = number.intValue;
            NSLog(@"%i", x);
        }
        
    }
    return 0;
}
