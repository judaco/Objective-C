//
//  Square.m
//  Lesson03 - Inheritance
//
//  Created by Juda Cossa on 21/03/2017.
//  Copyright © 2017 Juda. All rights reserved.
//

#import "Square.h"

@implementation Square

-(void)setSide:(int)s {
    [super setWidth:s andHeight:s];
}
-(int)side {
    return self.width;
}
-(void)setWidth:(int)w andHeight:(int)h {//inheritance from Rectangle
    [self setSide: w];
}

@end
