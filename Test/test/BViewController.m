//
//  BViewController.m
//  test
//
//  Created by lq on 2020/2/26.
//  Copyright © 2020 steven. All rights reserved.
//

#import "BViewController.h"

@interface BViewController ()

@end

@implementation BViewController

#pragma mark - ViewController Method

- (void)dealloc {
    
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 0, 100, 100);
    btn.backgroundColor = [UIColor redColor];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(test) forControlEvents:UIControlEventTouchUpInside];

}

- (void)test {
        [[NSNotificationCenter defaultCenter] postNotificationName:@"12" object:nil];
  
}

#pragma mark - Public Method


#pragma mark - Setup UI Method


#pragma mark - Rquest Method


#pragma mark - Action Method


#pragma mark - Setting&&Getting


@end
