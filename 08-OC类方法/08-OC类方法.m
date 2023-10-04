//
//08-OC类方法
//
//Created by hyj on 2023/10/2
//
/*
语法：
    和对象方法类似，只需要将 - 改成 +即可
    + (返回值类型)方法名;

特点：
    节约空间
    提高效率
    不能直接访问类的属性，但是可以在类方法中创建一个对象来访问这个对象的属性
    也不能通过self访问类的其他对象方法
    对象方法可以直接调用类方法

什么时候可以将方法定义为类方法
    不需要直接访问属性，也不需要直接调用其他的对象方法

规范：
    写一个类的时候要为这个类提供一个和类名同名的类方法，这个方法的功能是返回一个最纯洁的类对象（相当于构造函数）
    这个类也可以传入参数来初始化一些必须的属性值 如 PersonWith:(NSString*)name andAge:(int)age;

注意：
    NSString也是一个Foundation框架下的类方法
    可以通过下面的方法创建NSString对象
    NSString *str0 = [NSString new];
    NSString *str1 = [NSString string];

*/

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    NSString *_name;
    int _age;
}
- (void)run;
+ (Person*)PersonWith:(NSString*)name andAge:(int)age;
+ (void)walk;
@end

@implementaion Person
- (void)run {
    NSLog(@"我是对象方法");
}
+ (Person*)PersonWith:(NSString*)name andAge:(int)age {
    Person *p1 = [Person new];
    p1->_name = name;
    p1->_age = age;
    return p1;
}
+ (void)walk {
    NSLog(@"我是类方法");
}
@end
int main() {
    Person *p1 = [Person new]; //通过new方法创建一个对象
    Person *p2 = [Person PersonWith:@"hyj":15]; //通过类方法创建一个对象
    NSLog(@"未完待续~");

    NSString *str0 = [NSString new];
    NSString *str1 = [NSString string];
    NSLog("str0 addr = %p", str0); //%p打印str0的指针值（一个地址）
    NSLog("str0 = %@", str0); //%@打印的是str0所指向的内容
    NSLog("str1 addr = %p", str1); //%p打印str1的指针值（一个地址）
    NSLog("str1 = %@", str1); //%@打印的是str0所指向的内容
    NSLog(@"over");
    return 0;
}