#import "Test.h"
int main (int argc, char * argv[])
{
    @autoreleasepool {
     
         NSLog(@"this is main");
        Test *test;
        test = [[Test alloc] init];
        [test funcWithStatic];
        [test funcWithStatic];
        [test funcWithLocal];
        [test funcWithLocal];
        Test *test2;
        test2 = [[Test alloc] init];
        NSLog(@"this is test2 result::");
        [test2 funcWithStatic];
    }
}
