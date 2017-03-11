//
//  main.m
//  MyPoint
//
//  Created by Juda Cossa on 11/03/2017.
//  Copyright © 2017 Juda. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyPoint : NSObject

-(void) print;
-(void) setX: (int)x;
-(void) setY: (int)y;
-(int) X;
-(int) Y;

@end

@implementation MyPoint
{
    int myX;
    int myY;
}

-(void)print{
    NSLog(@"(%i,%i)", myX, myY);
}

-(void)setX:(int)x{
    myX = x;
}

-(void)setY:(int)y{
    myY = y;
}

-(int)X{
    return myX;
}

-(int)Y{
    return myY;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        MyPoint *p1 = [[MyPoint alloc] init];
        MyPoint *p2 = [[MyPoint alloc] init];
        [p1 setX:3];
        [p1 setY:5];
        [p2 setX:8];
        [p2 setY:15];
        
        [p1 print];
        [p2 print];
    }
    return 0;
}
