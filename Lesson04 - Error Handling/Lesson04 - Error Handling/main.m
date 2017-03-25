//
//  main.m
//  Lesson04 - Error Handling
//
//  Created by Juda Cossa on 25/03/2017.
//  Copyright © 2017 Juda. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyException : NSException
@property int errorCode;

@end

@implementation MyException

@end

int divide (int x, int y);//the signature of the method, which is outbound of the Main - this is coming from #C lang.

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //        NSArray *arr = [NSArray array];
        //        @try {
        //            @throw [[NSException alloc] initWithName:@"my name" reason:@"my reason" userInfo:nil];//initializer not default, because we have params,
        //            id x = [arr objectAtIndex: 2];
        //            NSLog(@"after the error");
        //        } @catch (NSException *exception) {
        //            NSLog(@"some error occured %@", exception.reason);//name gives NSRangeException, reson gives NSArray object index exception, index 2 beyond bounds for empty NSArray
        //        } @finally {
        //
        //        }
        
        @try {
            NSLog(@"done %i", divide(8, 0));
        } @catch (MyException *exception) {
            NSLog(@"some error ocurred - %@ - %@ - %i", exception.name, exception.reason, exception.errorCode);
        } @catch (NSException *exception){
            NSLog(@"regular exception");
        } @finally {
            
        }
        NSLog(@"done");
    }
    return 0;
}

int divide (int x, int y) {
    if (y == 0){
        MyException * e = [[MyException alloc] initWithName:@"arithmethic exception" reason:@"division by zero" userInfo:nil];
        e.errorCode = 404;
        //@throw e;
        @throw [[NSException alloc] initWithName:@"regular ex" reason:@"no real reason" userInfo:nil];
    }
    return x/y;
}
