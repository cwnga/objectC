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
@end
