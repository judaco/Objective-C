//
//  Button.m
//  Button Protocol HW
//
//  Created by Juda Cossa on 01/04/2017.
//  Copyright © 2017 Juda. All rights reserved.
//

#import "Button.h"

@implementation Button

@synthesize delegate;

-(void)simulateClick {
    if (delegate != nil) {
        if ([delegate respondsToSelector:NSSelectorFromString(@"click")]) {
            [delegate click];
        }
    }
}
@end
