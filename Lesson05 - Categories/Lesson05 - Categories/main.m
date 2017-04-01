//
//  main.m
//  Lesson05 - Categories
//
//  Created by Juda Cossa on 01/04/2017.
//  Copyright © 2017 Juda. All rights reserved.
//
#import <Foundation/Foundation.h>

@interface Dog : NSObject
-(void) bark;
@end

@implementation Dog
-(void) bark {
    NSLog(@"waf ... waf ...");
}
@end

//Category
@interface Dog (SleepingDog)//this is not an inheritance, it's a category inside the class of Dog. The category must be categorize at the same place of my interface.
-(void) goToSleep;
@end

@implementation Dog (SleepingDog)

-(void)goToSleep {
    NSLog(@"zzzzzzzzzz....");
}

@end

@interface NSString (printableString)
-(void) print;
@end

@implementation NSString (printableString)

-(void)print {
    NSLog(@"%@", self);
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Dog *d = [[Dog alloc] init];
        [d bark];
        [d goToSleep];
        
        NSString *myString = @"Hi Juda, ma kore ve ze?";
        NSLog(@"%@", myString);
        
        [myString print];//now i can print straightly my string
    }
    return 0;
}
