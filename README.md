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
