//
//  XYPoint.m
//  Lesson03 - Inheritance
//
//  Created by Juda Cossa on 21/03/2017.
//  Copyright © 2017 Juda. All rights reserved.
//

#import "XYPoint.h"

@implementation XYPoint
@synthesize x, y;
-(instancetype)initWithX:(int)xVal andY:(int)yVal{
        self = [super init];
            if(self){
                [self setX:xVal andY:yVal];
            }
        return self;
    }

-(void)setX:(int)xVal andY:(int)yVal {
    x = xVal;
    y = yVal;
}

@end
