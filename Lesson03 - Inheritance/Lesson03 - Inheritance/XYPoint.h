//
//  XYPoint.h
//  Lesson03 - Inheritance
//
//  Created by Juda Cossa on 21/03/2017.
//  Copyright © 2017 Juda. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYPoint : NSObject
@property int x, y;
-(instancetype)initWithX:(int) xVal andY:(int) yVal;

-(void) setX: (int) xVal andY: (int) yVal;

@end
