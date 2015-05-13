#import "Test.h"
@implementation Test 
{
    int value1;
    //if no property in interface 
    //main.m:10:48: error: property 'value1' not found on object of type 'Test *'
    //         NSLog(@"this is test.value1:%i", test.value1);
    //


}
- (void) func1
{
    NSLog(@"this is func1");
}
- (void) funcWithLocal
{
    int count = 0;
    count++;

    NSLog(@"this is funcWithLocal count:%i", count);///每次從0開始
}
- (void) funcWithStatic
{
    static int count; ///訂在function內， 即使不同的實體， 最後還是call 到同一個static count， 所以其他實體用 funcWithStatic ， 還是會+1 ,EX:[obj1 funcWithStatic]; [obj2 funcWithStatic];///will 2
    count++;

    NSLog(@"this is funcWithStatic static count:%i", count);
}
@end
