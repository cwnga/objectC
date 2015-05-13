#import "Test.h"
int main (int argc, char * argv[])
{
    @autoreleasepool {
     
         NSLog(@"this is main");
        Test *test;
        test = [[Test alloc] init];

         NSLog(@"this is test.value1:%i", test.value1);
        test.value1 = 111;
         NSLog(@"this is test.value1:%i", test.value1);

 
        //
        [test func1];
    }
}
