//
//08-OC类方法
//
//Created by hyj on 2023/10/2
//
/*
语法：
    和对象方法类似，只需要将 - 改成 +即可
*/

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    int _age;
}
- (void)run;
+ (void)walk;
@end

@implementaion Person
- (void)run {
    NSLog(@"我是对象方法");
}
+ (void)walk {
    NSLog(@"我是类方法");
}
@end
int main() {
    [Person walk];
    return 0;
}