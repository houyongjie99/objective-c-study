//
//  God.h
//  Day03-上帝杀人
//
//  Created by hyj on 2023/10/2.
//

#import <Foundation/Foundation.h>
#import "Person.h"
NS_ASSUME_NONNULL_BEGIN

@interface God : NSObject
{
    @public
    NSString *_name;
    NSString *_sex;
    int _age;
}
- (void)killWithPerson:(Person*)pname;
@end

NS_ASSUME_NONNULL_END
