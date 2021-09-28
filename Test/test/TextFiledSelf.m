//
//  TextFiledSelf.m
//  test
//
//  Created by lq on 2021/2/25.
//  Copyright © 2021 steven. All rights reserved.
//

#import "TextFiledSelf.h"

@implementation TextFiledSelf

- (void)drawPlaceholderInRect:(CGRect)rect {
    UIColor *color;
        color  = [UIColor colorWithRed:55/255.0 green:194/255.0 blue:188/255.0 alpha:1.0];;
   
    CGSize placeholderSize = [self.placeholder sizeWithAttributes:@{NSFontAttributeName : self.font}];
    [self.placeholder drawInRect:CGRectMake(0, (rect.size.height - placeholderSize.height) / 2, rect.size.width, rect.size.height)
                  withAttributes:@{NSForegroundColorAttributeName : color, NSFontAttributeName : self.font}];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
