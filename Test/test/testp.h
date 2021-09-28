//
//  testp.h
//  test
//
//  Created by lq on 2019/12/26.
//  Copyright © 2019 steven. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol testp <NSObject>

@property (nonatomic, strong, readonly) NSArray *children;

+ (void)testClass;


- (NSString *)cellHeight;

@end

NS_ASSUME_NONNULL_END
