//
//  Rectangle.h
//  Lesson03 - Inheritance
//
//  Created by Juda Cossa on 21/03/2017.
//  Copyright © 2017 Juda. All rights reserved.
//

#import <Foundation/Foundation.h>

@class XYPoint;

@interface Rectangle : NSObject
@property int width, height;
-(instancetype)initWithWidth:(int)w andHeight:(int)h andOrigin:(XYPoint*) o;
-(int) area;
-(int) perimeter;
-(void) setWidth: (int) w andHeight: (int) h;
-(void) setOrigin: (XYPoint *) o;
-(XYPoint *) o;

@end
