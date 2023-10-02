//
//05-OC多文件.m
//
//Created by hyj on 2023/10/1
//
/*
之前我们把各种类都写在一个.m文件中，这样会导致文件过于臃肿，不利于维护和阅读

1. 推荐类的书写方式
    把一个写在一个模块之中，一个模块至少包含两个文件：
    .h头文件
    	写类的声明，需要引入Foundation框架的头文件（用到了NSObject）
    .m实现文件
    	先引入模块的.h头文件，这样就有了类的声明
    	写类的实现
    如果要用到类，只需要引入这个模块的头文件就可以直接使用了
    
2. 更简洁的方式Xcode
    使用NewFile 然后使用Cocoa Class 会自动生成模块文件和相应的模板，填充即可
*/
#import <Foundation/Foundation.h>
#import <Person.h>

int main() {
  Person *p1 = [Person new]; //在Person.h文件中声明，在Person.m文件中定义
  return 0;
}
