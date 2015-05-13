# objectC
===================
ch1 basic use object c
==================
ch2 拆分.h, .m
==================
    .h
    @property int value1;
    ///if no this, 在.m implementation 
    ///{
    ///     int value1;//當使用object.value1 時 error 
    ///}
    ///main.m:10:48: error: property 'value1' not found on object of type 'Test *'
   

    .m
    int value1;///optional
    
    main.m
    
    
    exec:
    $clang -v -fobjc-arc *.m -o test.o
    $ ./test.o
    2015-05-14 00:49:17.252 test.o[641:1338605] this is main
    2015-05-14 00:49:17.253 test.o[641:1338605] this is test.value1:0
    2015-05-14 00:49:17.253 test.o[641:1338605] this is test.value1:111
    2015-05-14 00:49:17.254 test.o[641:1338605] this is func1
ch3 static in func
==================
    .m
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

   
    exec:
    $clang -v -fobjc-arc *.m -o test.o
    $ ./test.o
    2015-05-14 01:12:04.133 test.o[1424:1347175] this is main
    2015-05-14 01:12:04.134 test.o[1424:1347175] this is funcWithStatic static count:1
    2015-05-14 01:12:04.134 test.o[1424:1347175] this is funcWithStatic static count:2
    2015-05-14 01:12:04.134 test.o[1424:1347175] this is funcWithLocal count:1
    2015-05-14 01:12:04.134 test.o[1424:1347175] this is funcWithLocal count:1
    2015-05-14 01:12:04.134 test.o[1424:1347175] this is test2 result::
    2015-05-14 01:12:04.135 test.o[1424:1347175] this is funcWithStatic static count:3
