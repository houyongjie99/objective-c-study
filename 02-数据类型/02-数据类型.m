//
//02-数据类型.m
//
//Created by hyj on 2023/10/1
//
/*
1. OC中的数据类型
    1）支持C语言中所有数据类型
    	基本数据类型： int double float char
    	构造类型： 数组 结构体 枚举
    	指针类型： int *p1;
    	空类型: void
    	typedef自定义类型
    2）BOOL类型
        a. 可以存储YES或者NO中的任意一个数据
        b. 一般情况下BOOL类型的变量用来存储条件表达式的结果
        c. BOOL本质
            typedef signed char BOOL 实际上是一个有符号的char类型,占1个字节
            #define YES ((BOOL)1)
            #define NO ((BOOL)0)
    3）Boolean类型（一般用BOOL即可）
        a. Boolean可以存储true或者false，和BOOL类似
        b. Boolean本质
            typedef unsigned char Boolean 实际上是一个无符号的char类型,占1个字节
            #define true 1
            #define false 0
    4）class类型 类
    5）id类型 万能指针
    6）nil 与NULL差不多
    7）SEL 方法选择器
    8）block 代码段

2. OC支持C中所有的运算符
	- 赋值运算符 = 
	- 算术运算符 + - * / %
	- 复合赋值运算符 += -= *= /= %=
	- 自增与自减 ++ --
	- 关系运算符 > >= < <= == !=
	- 逻辑运算符 && || !
	- 取地址运算符 &
	- 指针访问运算符 *
	- 位运算符 & | ^ ~

3. OC支持C中的所有控制语句
 	- if
	- switch-case
	- while
	- do-while
	- for
	- 数组
 	- 指针
	- 函数

4.  OC支持C中所有的关键字，并且效果一致
	同时也新增了一些关键字，绝大多数都是以@符号开头
	- @interface 声明类
	- @implmentation 定义类
	- @public 使得类中属性为public权限，可以被外部访问
	- @autoreleasepool 自动释放池，管理内存
	- 等等
5. OC支持C中的函数定义和调用
            
总结：
	OC语言完全兼容C语言，在OC中可以写任意的c代码，并且效果一致
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
  int num1 = 1;
  int num2 = 2;
  BOOL b1 = num1 > num2; //使用Boolean有同等效果
  if (b1) {
    NSLog(@"num1 > num2");
  }
  else {
    NSLog(@"num1 <= num2");
  }
  return 0;
 }
 
