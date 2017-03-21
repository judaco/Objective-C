//
//  Rectangle.m
//  Lesson03 - Inheritance
//
//  Created by Juda Cossa on 21/03/2017.
//  Copyright © 2017 Juda. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle
{
    XYPoint *origin;
}

@synthesize width, height;
-(void)setWidth:(int)w andHeight:(int)h {
    width = w;
    height = h;
}
-(int)area {
    return width * height;
}
-(int)perimeter {
    return 2*(width + height);
}
-(void)setOrigin:(XYPoint *)o {
    origin = o;
}
-(XYPoint *) origin{
    return origin;
}

@end
