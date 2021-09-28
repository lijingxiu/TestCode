//
//  main.m
//  test
//
//  Created by steven on 2019/12/10.
//  Copyright © 2019 steven. All rights reserved.
//

#import "AppDelegate.h"
#import <UIKit/UIKit.h>


int main(int argc, char * argv[]) {

    NSString *appDelegateClassName = nil;
    @autoreleasepool {
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}

