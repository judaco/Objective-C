//
//  main.m
//  Lesson05 - TypeDef
//
//  Created by Juda Cossa on 01/04/2017.
//  Copyright © 2017 Juda. All rights reserved.
//

#import <Foundation/Foundation.h>

//Typedef - like alias in Swift
@interface Dog : NSObject
-(void) bark;
@end

@implementation Dog

-(void)bark {
    NSLog(@"waf waf....");
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        typedef Dog Doggy;//get a type and give him a new name, like a 'nickname'
        typedef NSString String;//now I define NSString as 'String', and it valids only for the own project (like alias in swift)
        Doggy *dog = [[Doggy alloc] init];
        [dog bark];
        
        //bitwise
        NSLog(@"x=%i", 6 & 5);//4 - AND
        NSLog(@"x=%i", 6 | 5);//7 - OR
        NSLog(@"x=%i", 6 ^ 5);//3 - XOR
        NSLog(@"x=%i", 6 >> 5);//0 - SHIFT RIGHT
    }
    return 0;
}
