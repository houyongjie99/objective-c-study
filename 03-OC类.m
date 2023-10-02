//
//03-OC类.m
//
//Created by hyj on 2023/10/1
//
/*
1. 类的定义
    1）类的三要素：类名 属性 方法
    2）定义类的语法
    	a.位置
    	b.类的声明
            @interface 类名 : NSObject
            {
                这类事物具有的共同特征，将他们定义为变量
            }
                功能就是一个方法，将方法的声明写在这里
            @end
    	c.类的实现
            @implementation 类名
            	将方法的实现写在这里
            @end
	3)注意
		类必须要有声明和实现
		类名用描述的事物的名称来命名
		类名的每一个单词的首字母必须要大写字母开头
		变量定义在大括号中，用来表示类的共同特征的属性/成员变量/实例变量/字段
		语法是固定的
		类的属性的名称必须以 _ (下划线)开头--规范
    
2. 创建类的对象
    语法：类名 *对象名 = [类名 new]
    比如：Person *p1 = [Person new];

3. 访问对象的属性
    对象的属性默认是不允许被外界访问的，如果需要改变权限，可以在{}中加上@public
    访问属性有两种方式：
    	a. 对象名->属性名;（更常用）
		  b. (*对象名).属性名;

4. 方法的声明
    位置：在@interface的大括号外面
    语法：
    	- (返回值类型)方法名称:(参数1类型)参数1名:(参数2类型)参数2名:...；
    	- (void)run:(float)speed:(float)distance;

5. 方法的实现
    位置：在@implementation之中
    语法：声明的分号去掉，然后加上大括号，将具体实现写在大括号中
    	- (void)run:(float)speed:(float)distance
		{
    		//具体的实现
		}

6. 方法的调用
    首先需要将类实例化为对象
    语法：
    	[对象名 方法名:参数1:参数2:];
		[p1 run:1.2f:2000.f];

注意：多参数的定义可以将方法名分开用于参数说明；
		比如：- (void)eatWithFood:(NSString*)food Nums:(int)nums;
			方法名实际上是eatWithFood:Nums:
	参数类型也可以是对象，因为类其实就是我们自定义的一种数据类型
*/

#import <Foundation/Foundation.h>

//声明并定义一个Person类，并定义吃和跑两种行为（方法）
@interface Person : NSObject
{
    @public //允许变量在类的外部使用
    NSString *_name;
    int  _age;
    float _height;
}
//方法声明
- (void) run;
- (BOOL) eatWithFood: (NSString*)food andNums: (int)nums;
@end
    
@implementation Person
//方法定义
- (void) run {
  NSLog(@"我是%@跑啊跑，跑啊跑，跑啊跑", _name);
}

- (BOOL) eatWithFood: (NSString*)food andNums: (int)nums {
  NSLog(@"我吃了%d个%@", nums, food);
  return YES;
}
@end

int main() {
  //创建一个类对象
  Person *p1 = [Person new];
  p1->_name = @"hyj";
  p1->_age = 19;
  p1->_height = 65.f;
  [p1 run]; //调用run方法
  BOOL finishEat = [p1 eatWithFood: @"香蕉" andNums: 5]; //调用eat方法并传入参数
}


