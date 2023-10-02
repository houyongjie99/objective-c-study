//
//01-OC基础.m
//
//Created by hyj on 2023/10/1
//
/*
1. OC程序的后缀是.m表示OC中最重要的机制之一：消息机制（message）

2. #import指令，增强版本的#include，无论import多少次，文件只会被包含一次

3. @autoreleasepool 自动释放池

4. NSLog函数
    printf的增强版，控制台输出信息
    NSLog(@"格式控制字符串",变量列表);
	增强：
        a.会输出一些调试的相关信息：这行代码运行的时间、代码所对应的程序文件名、进程编号、线程编号、具体输出内容
        b.会自动换行，如果手动加了\n换行，则自动换行会失效
        c.OC中新增了一些数据类型，只能使用NSLog输出这些数据类型。
    具体用法和printf一样，但是必须在第一个参数前加@符号
        
5. OC字符串前加@符号，不加的话是C字符串
    NSString类型的指针变量只能存储OC字符串的地址，不能存储C字符串
	NSString *str = @"this is a oc string";
	NSLog函数格式化输出NSString需要使用%@，而不是%s（c语言的字符串）
        
6. NS前缀
    NextStep --> Cocoa --> Foundation框架
        
7. @符号
    1）将C字符串转换为OC字符串
    2）OC中的绝大部分关键字都是以@符号开头：如：@autoreleasepool
        
8. 注释和C语言完全一样
        
9. 函数定义和调用和C语言完全一样
        
总结：
  OC语言从C语言发展而来，是面向对象的一种语言，后缀名为.m，和C语言有很多相似的地方，但是仍然有一些不同，比如：#import、 NSLog函数、NSString表示OC字符串以及@
  符号等等
*/

#import <Foundation/Foundation.h>

int main() 
{
  @autoreleasepool
  {
    NSString *name = @"hyj";
    NSLog(@"Hello World! 我的名字是%@", name);
  }
  return 0;
}
