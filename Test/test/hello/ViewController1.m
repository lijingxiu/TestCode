//
//  ViewController.m
//  test
//
//  Created by steven on 2019/12/10.
//  Copyright © 2019 steven. All rights reserved.
//

#import "ViewController.h"
#import "Test.h"
#import <objc/runtime.h>

#import <SDWebImage/SDWebImage.h>


@interface MyObject : NSObject {
 @public
    NSInteger _age;
    NSInteger _score;
}
@end

@implementation MyObject

- (NSString *)description {
    return [NSString stringWithFormat:@"age:%ld, score:%ld", _age, _score];
}

@end

@interface ViewController ()

@property (nonatomic, strong) Test<testp> *testObj;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *arr = @[];
    id first = [arr firstObject];
    
    [Test testClass];
    
    UIImageView *imageView = [UIImageView new];
    [imageView sd_setImageWithURL:nil placeholderImage:nil];
    
    
//    [imageView sd]
//    self.testObj = [[Test alloc] init];
   
    
    
//    NSMethodSignature *sig = [[self class] instanceMethodSignatureForSelector:@selector(take:andAge:andBlue:)];
//    NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:sig];
//    invocation.target = self;
//    invocation.selector = @selector(take:andAge:andBlue:);
//    NSString *name = @"李强";
//    int age = 30;
//    NSString *color = @"re";
//    [invocation setArgument:&name atIndex:2];
//    [invocation setArgument:&age atIndex:3];
//    [invocation setArgument:&color atIndex:4];
//    [invocation invoke];
//
//    const char *sigreturn = sig.methodReturnType;
//    NSUInteger siglength = sig.methodReturnLength;
//    if(siglength != 0){
//        if(strcmp(sigreturn, "@") == 0){
//            NSString *returnStr;
//            [invocation getReturnValue:&returnStr];
//            NSLog(@"字符串返回值：%@",returnStr);
//        }else if (strcmp(sigreturn, "i")){
//            int a = 0;
//            [invocation setReturnValue:&a];
//        }
//    }else {
//
//    }
//    NSUInteger argumentNum = sig.numberOfArguments;
//    NSLog(@"%zd",argumentNum); //参数的个数
//    const char *type2 = [sig getArgumentTypeAtIndex:2];
//    NSLog(@"方法签名中下标为2的的参数类型:%s",type2);
//    const char *type3 = [sig getArgumentTypeAtIndex:3];
//    NSLog(@"方法签名中下标为3的的参数类型:%s",type3);
//    [self take:name andAge:&age andBlue:color];
//    NSLog(@"%d",age);
    NSError *err;
    // Do any additional setup after loading the view.
    
    
//    NSObject *o = ({
//        MyObject *o = [MyObject new];
//        o->_age = 22;
//        o->_score = 59;
//        o;
//    });
//    NSObject *o  = ({
//              MyObject *o = [MyObject new];
//              o->_age = 33;
//              o->_score = 59;
//              o;
//          });;

    NSString *o = @"123";
    
    NSLog(@"调用方法前的变量o:%@  内存地址%p", o,&o);    [self method2:&o];
    NSLog(@"调用方法后的变量o:%@ 内存地址%p", o, o);
    
//    IMP imageNameIMP = class_getMethodImplementation_stret([self class], @selector(method2:));

   


}

- (void)testBlock:(void(^)( NSString  *test))testblock{
    
}
-(BOOL)take:(NSString *)name andAge:(int *)age andBlue:(NSString *)color{
//    NSLog(@"%@-%d-%@",name,age,color);
    *age = 18;
    name = @"黎明";
    return YES;
//    return 7;
}


- (void)method2:(NSString **)obj {
    // obj是一个指针变量(指向另一个指针变量 = MyObject的实例对象)
    // *obj将obj解引用后将得到这个指针指向的一个指针变量 = 外部的MyObject的实例对象
    *obj = @"456";
    // 这里的ob改变后只是将指针指向了另外一个对象并不能改变外部的MyObject的实例对象
//    __autoreleasing MyObject *o1 = ({
//        MyObject *o1 = [MyObject new];
//        o1->_age = 25;
//        o1->_score = 60;
//        o1;
//    });
//    obj = &o1;
}
@end
