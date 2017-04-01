//
//  main.m
//  Lesson 05 - Protocols
//
//  Created by Juda Cossa on 01/04/2017.
//  Copyright © 2017 Juda. All rights reserved.
//

#import <Foundation/Foundation.h>

//like Interface in Java
@protocol Rollable <NSObject>//when you confomrs to protocol, you decalre that you have the methods.
-(void) roll;
-(void) bounce;
@end

@protocol Doable <NSObject>

-(void) doThis;
-(void) doThat;

@end

@interface Ball : NSObject <Rollable, Doable>

@end

@implementation Ball

-(void) roll {
    
}

-(void) bounce {
    
}

-(void) doThis {
    
}
-(void) doThat {
    
}

@end

//Delegate it's a field of the class Button (for example), that the field must point on object, but the class will conform to the protocol onClickDelegate (from example from JAVA), listener in java is the same as delegate in iPhone.

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        id <Rollable> b = [[Ball alloc] init];
        if ([b conformsToProtocol:@protocol(Rollable)]) {//this is true, but I don't must to implement all the methods
            NSLog(@"method conforms");
            
            if ([b respondsToSelector:NSSelectorFromString(@"roll")]) {//this is true as well, since I implement the "roll|" method
                [b performSelector:NSSelectorFromString(@"roll") withObject:b];
            }
        }
        NSLog(@"Hello, World!");
    }
    return 0;
}
