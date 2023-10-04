//
//  Person.m
//  Day03-上帝杀人
//
//  Created by hyj on 2023/10/2.
//

#import "Person.h"

@implementation Person
- (void)runWith:(int)distance {
    NSLog(@"%@跑了%d米",_name,distance);
}
- (BOOL)eatWithNums:(int)nums Food:(NSString*)food {
    NSLog(@"%@吃了%d个%@！",_name,nums,food);
    _hungry = _hungry - nums*1.0/10;
    NSLog(@"%@现在的饥饿度是%.2f！",_name,_hungry);
    if (_hungry < 1e-5) return YES;
    return NO;
}
- (void)addHWith:(int)addh {
    NSLog(@"%@长高了%dcm",_name,addh);
    _height += addh;
    NSLog(@"%@现在的身高是%d",_name,_height);
}
- (void)addWWith:(float)addw {
    NSLog(@"%@胖了%.2f公斤",_name,addw);
    _weight += addw;
    NSLog(@"%@现在的体重是%.2f公斤",_name,_weight);
}
- (void)addAge:(int)addage {
    _age += addage;
    _leftLive -= addage;
    NSLog(@"%@现在%d岁啦",_name,_age);
    if (_leftLive <= 0) NSLog(@"%@去世了～",_name);
}
@end
