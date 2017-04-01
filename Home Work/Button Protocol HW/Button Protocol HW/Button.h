//
//  Button.h
//  Button Protocol HW
//
//  Created by Juda Cossa on 01/04/2017.
//  Copyright © 2017 Juda. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ButtonDelegate <NSObject>

-(void) click;

@end

@interface Button : NSObject
@property id<ButtonDelegate> delegate;
-(void) simulateClick;
@end
