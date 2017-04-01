//
//  Button2.m
//  Button Protocol HW
//
//  Created by Juda Cossa on 01/04/2017.
//  Copyright © 2017 Juda. All rights reserved.
//

#import "Button2.h"

@implementation Button2
{
    NSString * target;
    id obj;
}

-(void)simulateClick {
    if (obj != nil && target != nil) {
        if ([obj respondsToSelector:NSSelectorFromString(target)]) {
            [obj performSelector:NSSelectorFromString(target)];
        }
    }
}

-(void)setTarget:(NSString *)t onObject:(id)o {
    target = t;
    obj = o;
}

@end
