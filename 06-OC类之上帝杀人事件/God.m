//
//  God.m
//  Day03-上帝杀人
//
//  Created by hyj on 2023/10/2.
//

#import "God.h"

@implementation God
- (void)killWithPerson:(Person*)pname {
    pname->_leftLive = 0;
    NSLog(@"%@杀死了%@",_name, pname->_name);
}
@end
