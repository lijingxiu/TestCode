//
//  NSString+Boss.m
//  BusMineBasic
//
//  Created by Dou on 2019/4/26.
//

#import "NSString+Boss.h"

@implementation NSString (Boss)

- (NSString *)appendElipsis:(NSInteger)index {
    NSInteger sum = 0;
    NSString *subStr = nil;
    for (int i = 0; i<[self length]; i++) {
        unichar strChar = [self characterAtIndex:i];
        if(strChar < 256){
            sum += 1;
        } else {
            sum += 2;
        }
        //如果长度大于指定
        if (sum > index) {
            subStr = [self substringToIndex:i];
            break;
        }
    }
    if (subStr) {
        return [NSString stringWithFormat:@"%@...",subStr];
    }
    return self;
}


@end

