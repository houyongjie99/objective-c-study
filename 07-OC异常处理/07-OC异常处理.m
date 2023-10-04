//
//07-OC异常处理
//
//Created by hyj on 2023/10/2
//
/*
语法：
    @try { //将有可能发生异常的代码放在try中

    } 
    @catch(NSException *ex) { //如果try中的代码发生了异常，则程序不会崩溃，会立即跳转到catch中执行里面的代码

    } 
    //如果try中的代码没有发生异常，则直接略过catch，往下执行

注意：
    C语言的异常是无法处理的
    这类无法处理的异常可以通过if判断来避免
*/
#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Hello World!");
    }
    @try {
        Person *p1 = [Person new];
        [p1 sayHi]; //Person类的sayHi方法只声明而没有实现，所以会发生异常
        NSLog(@"hahaha");
    }
    @catch (NSException *ex){
        NSLog(@"我在Catch中~");
        NSLog(@"异常原因：%@",ex); //通过ex可以记录发生异常的原因
    }
    @finally {
        NSLog(@"我是finally~ 不管是否发生异常我都会执行"); //finally中的内容不论是否发生异常都会执行
    }
    NSLog(@"程序结束");
    return 0;
}
/*
输出为：
Hello World!
我在Catch中~
程序结束
*/