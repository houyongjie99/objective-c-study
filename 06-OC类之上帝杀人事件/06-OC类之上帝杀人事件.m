//
//  main.m
//  Day03-上帝杀人
//
//  Created by hyj on 2023/10/2.
//
/*
类可以：
    类可以作为其他类的方法的参数
    类可以作为方法的返回值
    类也可以作为其他类的属性
    类也可以作为本类的方法的参数

本质上对象传递时都是使用的地址 （类名 *）
*/

#import <Foundation/Foundation.h>
#import "Person.h"
#import "God.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    Person *p1 = [Person new];
    p1->_name = @"小明";
    p1->_age = 15;
    p1->_sex = @"男";
    p1->_height = 169;
    p1->_weight = 50.0;
    p1->_leftLive = 60;
    p1->_hungry = 0.5;
    [p1 runWith:20];
    
    God *g1 = [God new];
    g1->_name = @"耶稣";
    g1->_age = 9999;
    g1->_sex = @"男";
    
    BOOL baoleme = [p1 eatWithNums:5 Food:@"西红柿"];
    if (baoleme) NSLog(@"%@吃饱啦", p1->_name);
    [p1 addAge:1];
    [p1 addHWith:5];
    [p1 addWWith:1.3];
    
    while(p1->_leftLive)[p1 addAge:1];//让小明自然死亡
    
    [g1 killWithPerson:p1];//耶稣直接杀死了小明
    return 0;
}
