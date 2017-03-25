//
//  main.m
//  Lesson04 - Initializers
//
//  Created by Juda Cossa on 25/03/2017.
//  Copyright © 2017 Juda. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface Dog : NSObject
-(void) bark;
-(void) goToSleep;
-(void) setName: (NSString *) n;
-(NSString *) getName: (int) x;
@end

@implementation Dog
{
    NSString *name;
    int age;
}
//go look at the Dog = (Dog *) - this is an override
//-(instancetype)init{
 //   self = [super init];
//    if (self) {//like boolean, if self is not nil (=0)
//        name = @"snoopy";
//        age = 0;
//    }
//    return self;
//}
-(instancetype)init {
    return [self initWithName:@"Snoopy"];
}
//-(instancetype)initWithName: (NSString *) n{
//    self = [super init];
//    if (self) {//like boolean, if self is not nil (=0)
 //       name = @"snoopy";
 //       age = 0;
//    }
 //   return self;
//}
-(instancetype)initWithName: (NSString *) n{
    return [self initWithName:n andAge:0];
}

-(instancetype)initWithName:(NSString *)n andAge: (int)a{
    self = [super init];
    if(self){
        name = n;
        age = a;
    }
    return self;
}

-(void)bark {
    NSLog(@"Waf waf");
}
-(void)goToSleep {
    NSLog(@"Zzzzzz");
}
-(void)setName:(NSString *)n {
    name = n;
}
-(NSString *)getName {
    return name;
}

@end

int globalVariable = 5;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Dog *d = [Dog alloc];//alloc is static - give us a place in the memory (allocate us a place)
        d = [d init];//init is not static, init sets on an object from specific type (here dog)
        [d setName: @"peter"];//without the init the name will be peter as in the setter, which we defined one line above
        //[d init];//here the name will be snoopy as in the "init" of instancetype.
        NSLog(@"name: %@", [d getName ]);
        //[Person stam];
        NSLog(@"name: %i", globalVariable);//with the Person method it's 3 (inheritance), while Person is not active on main then it's 5 - from the outside main
    }
    return 0;
}
