//
//  main.m
//  Rectangle
//
//  Created by Juda Cossa on 11/03/2017.
//  Copyright © 2017 Juda. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Rectangle : NSObject {
    double width;
    double height;
}

-(void) setWidth: (double) w;
-(void) setHeight: (double) h;
-(double) width;
-(double) height;

-(double) area;
-(double) perimeter;

@end

@implementation Rectangle

-(void) setWidth: (double) w {
    width = w;
}
-(void) setHeight: (double) h {
    height = h;
}
-(double) width {
    return width;
}
-(double) height {
    return height;
}

-(double) area {
    return width * height;
}
-(double) perimeter {
    return (width + height) * 2;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Rectangle *rec = [[Rectangle alloc] init];
        [rec setWidth: 8];
        [rec setHeight: 4];
        
        NSLog(@"Rectangle is %g by %g", rec.width, rec.height);
        NSLog(@"Area = %g, Perimeter = %g", [rec area], [rec perimeter]);
    }
    return 0;
}
