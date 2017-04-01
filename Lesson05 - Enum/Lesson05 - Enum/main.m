//
//  main.m
//  Lesson05 - Enum
//
//  Created by Juda Cossa on 01/04/2017.
//  Copyright © 2017 Juda. All rights reserved.
//

#import <Foundation/Foundation.h>

enum Gender {male = 10, female = 15, other = 20};

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        enum Gender myGender = other;
        if (myGender == female) {
            NSLog(@"female");
        }else if (myGender == male) {
            NSLog(@"male");
        }else {
            NSLog(@"other");
        }
        NSLog(@"%i", (int) myGender);
        
        switch (myGender) {
            case male:
                NSLog(@"male");
                break;
            case female:
                NSLog(@"female");
                break;
            default:
                break;
        }
    }
    return 0;
}
