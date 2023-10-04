//
//  Person.h
//  Day03-上帝杀人
//
//  Created by hyj on 2023/10/2.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
{
    @public
    NSString *_name;//姓名
    int _age;//年龄
    NSString *_sex;//性别
    int _height;//身高
    float _weight;//体重
    int _leftLive;//剩余寿命
    float _hungry;//饥饿度
}
- (void)runWith:(int)distance;
- (BOOL)eatWithNums:(int)nums Food:(NSString*)food;
- (void)addHWith:(int)addh;
- (void)addWWith:(float)addw;
- (void)addAge:(int)addage;
- (void)sayHi;
@end

NS_ASSUME_NONNULL_END
