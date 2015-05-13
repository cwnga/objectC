//
//  test.m
//  objectC
//
//  Created by Anson Ng on 5/13/15.
//  Copyright (c) 2015 Anson Ng. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface TestClass: NSObject
-(void) testVoidFunc;
-(void) testParameterAndReturnFunc: (int) input1;
-(void) testParameter2AndReturnFunc: (int) input1 forExternalCallName:(int) input2;

@end

@implementation TestClass
{
    int member1;

}

-(void) testVoidFunc
{
    NSLog(@"member member1");
}

-(void) testParameterAndReturnFunc: (int) input1
{
    member1 = input1;
    NSLog(@"input1: %i", input1);
    
}

-(void)  testParameter2AndReturnFunc: (int) input1 forExternalCallName:(int) input2
{
    member1 = input1;
    NSLog(@"input1: %i", input1);
    
        NSLog(@"input2: %i", input2);
}
@end

int main (int argc, char * argv[])
{
    @autoreleasepool {
     
        TestClass *testClass;
        testClass = [[TestClass alloc] init];
        [testClass testVoidFunc];
        [testClass testParameterAndReturnFunc: 111];
        [testClass testParameter2AndReturnFunc: 111 forExternalCallName: 333];
        
    }
}
