//
//  main.m
//  Rectangle
//
//  Created by Juda Cossa on 18/03/2017.
//  Copyright © 2017 Juda. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Rectangle : NSObject
-(void)setWidth:(double)w;
-(void)setHeight:(double)h;
-(double)getWidth;
-(double)getHeight;
-(double)getArea;
-(double)getPerimeter;
@end

@implementation Rectangle
{
    double width;
    double height;
}
-(void)setWidth:(double)w{
    if(w >= 0)
        width = w;
}
-(void)setHeight:(double)h{
    if(h >= 0)
        height = h;
}
-(double)getHeight{
    return height;
}
-(double)getWidth{
    return width;
}
-(double)getArea{
    return width * height;
}
-(double)getPerimeter{
    return 2 * (width + height);
}

@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Rectangle * rect1 = [[Rectangle alloc] init];
        [rect1 setWidth:3];
        [rect1 setHeight:2];
        double a = [rect1 getArea];
        double p = [rect1 getPerimeter];
        NSLog(@"area is %g and perimeter is %g", a, p);
    }
    return 0;
}
