//
//04-OC类的内存使用.m
//
//Created by hyj on 2023/10/1
//
/*
1. 内存中的五大区域
    - 栈 存储局部变量
    - 堆 程序员手动申请的字节空间 malloc calloc realloc函数
    - BSS段 存储未被初始化的全局变量和静态变量
    - 数据段（常量区） 存储已经初始化的全局变量和静态变量以及常量数据
    - 代码段 存储代码
    
2. 类加载
    1）创建对象的时候 需要访问类
    2）声明一个类的指针变量也会访问类
    - 在程序运行期间，当某个类第一次被访问到时，会将这个类存储到内存中的代码段区域
    - 只有类第一次被访问的时候，才会做类加载
    - 一旦类被加载到代码段，程序结束的时候才会释放
    
3. 对象在内存中的存储--对象的属性在堆区，对象的方法在代码区
    类名 *对象名 = [类名 new]
    a. [类名 new]在堆内存中申请一段空间并且将空间的地址返回给指针，指针存储在栈区
    b. 对象中还有另外一个属性isa：是一个指针，指向对象所属的类在代码段中的地址
    c. 初始化对象的属性：
    	如果属性的类型是基本数据类型 赋值为0
	    如果属性的类型是C语言的指针类型 赋值为NULL
	    如果属性的类型是OC的类指针类型 赋值为nil
    d. 返回对象的地址

4. NULL和nil的区别
    基本上没有区别，我们使用时需要遵循以下规范：
      a. C指针使用NULL,表示不指向任意一块空间
        int *p1 = NULL; //不指向内存中的任何一块空间
      b. OC类指针使用nil，表示不指向任何对象
        Person *p2 = nil;  //p2指针不指向任何对象，如果此时去访问对象的属性，会出错；如果去调用对象的方法，运行不报错，但是方法不会执行，无反应

总结：
  Person *p1 = [Person new];
    上面的p1是一个指针，存储在栈区；
    [Person new]会创建一个对象，存储在堆区
    Person类的代码会在第一次访问这个类时被加载到代码区
*/

/* 小tips
1. 分组导航标记
    1) #pragma mark 分组名
    	会在导航条对应的位置显示一个导航标题
    2) #pragma mark -
    	会在导航条对应的位置显示一个水平分割线
    3) #pragma mark - 分组名
    	会在导航条对应的位置先产生一个水平分割线再生成一个导航标题
*/


#import <Foundation/Foundation.h>

@interface Person : NSObject
{
  int _age;
  NSString *_name;
}
- (void)run;
@end
@implementation Person
- (void)run{
  NSLog(@"我跑！");
}
@end

int main(int argc, const char * argv[]) {
  //p1 p2 p3都指向一个对象，修改任意一个，另外两个也会改变
  Person *p1 = [Person new];
  Person *p2 = nil; //p2指针目前不指向任何对象，如果此时去访问对象的属性，会出错；如果去调用对象的方法，运行不报错，但是方法不会执行，无反应
  [p2 run]; //不报错，但是无反应，不执行
  p2 = p1;
  [p2 run]; //正常执行
  Person *p3 = p2;
}
