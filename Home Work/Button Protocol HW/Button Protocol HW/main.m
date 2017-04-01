//
//  main.m
//  Button Protocol HW
//
//  Created by Juda Cossa on 01/04/2017.
//  Copyright © 2017 Juda. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Button.h"
#import "Button2.h"

@interface MyDelegate : NSObject <ButtonDelegate>

@end

@implementation MyDelegate

-(void)click {
    NSLog(@"Button was clicked");
}

@end

@interface MyClass : NSObject
-(void) stam;
@end

@implementation MyClass

-(void)stam {
    NSLog(@"stam");
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //        MyDelegate *myDelegate = [[MyDelegate alloc] init];
        //        Button *button = [[Button alloc] init];
        //        button.delegate = myDelegate;
        //        [button simulateClick];
        
        Button2 *button2 = [[Button2 alloc] init];
        MyClass *myClass = [[MyClass alloc] init];
        [button2 setTarget:@"stam" onObject:myClass];
        [button2 simulateClick];
    }
    return 0;
}
