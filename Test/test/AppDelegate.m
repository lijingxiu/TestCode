//
//  AppDelegate.m
//  test
//
//  Created by steven on 2019/12/10.
//  Copyright © 2019 steven. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"


@interface AppDelegate ()


@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
           [self.window makeKeyAndVisible];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(reset) name:@"12" object:nil];
    ViewController *a = [[ViewController alloc] init];
//    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:a];
    self.window.rootViewController = a;
    // Override point for customization after application launch.
    return YES;
}

- (void)reset {
    ViewController *a = [[ViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:a];
    a.view.backgroundColor = [UIColor yellowColor];

    self.window.rootViewController = nav;
}



@end
