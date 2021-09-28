//
//  Test.m
//  test
//
//  Created by lq on 2019/12/17.
//  Copyright © 2019 steven. All rights reserved.
//

#import "Test.h"

int global_i = 1;
static  int static_global_j = 2;


@interface Test ()


@end
@implementation Test


- (void )cellHeight{
    static int static_k = 3;
    __block int val = 4;
    __block NSMutableString * str = [[NSMutableString alloc]initWithString:@"Hello,"];

    void (^testBlock)(void) = ^{
        global_i += 1;
        static_global_j += 1;
        static_k += 1;
//        val += 1;
        NSLog(@"Block中 global_i = %d,static_global_j = %d,static_k = %d,val = %d, str = %@",global_i,static_global_j,static_k,val,str);
    };
    global_i ++;
    static_global_j ++;
    static_k ++;
    val ++;
    [str appendString:@"World!"];
    testBlock();
    NSLog(@"Block外 global_i = %d,static_global_j = %d,static_k = %d,val = %d, str = %@",global_i,static_global_j,static_k,val,str);
}

@end
