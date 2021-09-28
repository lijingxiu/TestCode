//
//  ViewController.m
//  test
//
//  Created by steven on 2019/12/10.
//  Copyright © 2019 steven. All rights reserved.
//

#import "ViewController.h"
#import "Test.h"
#import "TestSon.h"
#import "BViewController.h"
#import <objc/runtime.h>

#import <SDWebImage/SDWebImage.h>
#import "NSString+Boss.h"
#import <objc/runtime.h>
#import "TextFiledSelf.h"
#import "math.h"


typedef NS_ENUM(int, BBBasePosiType) {
    BBBasePosiTypeDefault = 0,           // 社招
    BBBasePosiTypeOldPartPosi = 1,       // 旧的兼职
    BBBasePosiTypeTraineePosi = 4,       // 实习生
    BBBasePosiTypeFreshGraduatePosi = 5, // 应届校招
    BBBasePosiTypeNewPartPosi = 6,       // 新兼职职位
};

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


static void hookInstanceMethod(Class class, SEL originSel, SEL overrideSel) {
    Method originalMethod = class_getInstanceMethod(class, originSel);
    Method overrideMethod = class_getInstanceMethod(class, overrideSel);
    method_exchangeImplementations(originalMethod, overrideMethod);
}

@interface UITextField (dark)
@end

@implementation UITextField (dark)

- (void)my_drawPlaceholderInRect:(CGRect)rect {
    UIColor *color;
        color = [UIColor redColor];
   
    CGSize placeholderSize = [self.placeholder sizeWithAttributes:@{NSFontAttributeName : self.font}];
    [self.placeholder drawInRect:CGRectMake(0, (rect.size.height - placeholderSize.height) / 2, rect.size.width, rect.size.height)
                  withAttributes:@{NSForegroundColorAttributeName : color, NSFontAttributeName : self.font}];
}

- (void)my_setTextColor:(UIColor *)textColor {
   
    [self my_setTextColor:[UIColor redColor]];
        
}
@end

@interface ViewController ()

//@property (nonatomic, strong) Test<testp> *testObj;
//@property (nonatomic, strong) UIScrollView *scrollView;
//@property(nonatomic, copy) NSString *target;

@property(nonatomic, assign) int sizeInt;

@end

@implementation ViewController

+(void)load
{
    hookInstanceMethod([UITextField class], @selector(setTextColor:), @selector(my_setTextColor:));

    hookInstanceMethod([UITextField class], @selector(drawPlaceholderInRect:), @selector(my_drawPlaceholderInRect:));
}


- (BOOL)prefersNavHidden {
    return YES;
}

- (UIStatusBarStyle)revealStatausBarStyle {
    return UIStatusBarStyleDefault;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor blackColor];
    class_getInstanceSize([self class]);
    NSLog(@"%d12",sizeof(self.sizeInt));
//    self.view.backgroundColor = [UIColor whiteColor];
//    UIView *view = UIView.new;
//    view.backgroundColor = UIColor.redColor;
//    view.frame = CGRectMake(0, 0, 50, 50);
//    [self.view addSubview:view];
//
//    [view.layer setFrame:CGRectMake(100, 100, 100, 100)];
////    view.layer.position = CGPointMake(80 , 80);
////    NSLog(@"point:%@",NSStringFromCGPoint(view.layer.position));
//    view.layer.anchorPoint = CGPointMake(0.2, 0.1);
////    NSLog(@"point:%@",NSStringFromCGPoint(view.layer.position));
//    NSLog(@"rect:%@", NSStringFromCGRect(view.frame));
    
    math *test = [[math alloc] init];
    
//    TextFiledSelf *field = [[TextFiledSelf alloc] initWithFrame:CGRectMake(0, 100, 400, 40)];
//    field.font = [UIFont systemFontOfSize:18];
//    field.placeholder = @"123";
//    field.textColor = [UIColor blueColor];
//    [self.view addSubview:field];
//
//    int num = 1502;
//    float df = (float)num/100;
//    num =  round(df);
//
//    int num1 = 1500;
//    float df1 = (float)num1/100;
//    num1 =  round(df1);
//
//    Test *test = [[Test alloc] init];
//    [test setValue:@"123" forKey:@"testStr"];
//    NSLog(@"%@",test.testStr);
//
//    __block int testInt = 10;
//    void (^testBlock)(void) =  ^(){
//        testInt = 11;
//        NSLog(@"%d",testInt);
//    };
//    testBlock();
    
    

    
//    UIView *view1 = [[UIView alloc] initWithFrame:CGRectMake(0, 100, 100, 100)];
//    view1.backgroundColor = UIColor.redColor;
//    [self.view addSubview:view1];
//
//    UIView *view2 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
//    view2.backgroundColor = UIColor.yellowColor;
//    [view1 addSubview:view2];
//    view2.frame = CGRectMake(0, 50, 50, 50);
//    [view1 addSubview:view2];
//
    #define HEXColor(colorString) [UIColor colorWithHexString:colorString]
//
//    UILabel *addrLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 200, 100)];
//    addrLabel.backgroundColor = [UIColor whiteColor];
//    addrLabel.textColor = [UIColor blackColor];
//    [self.view addSubview:addrLabel];
//
//    NSString *address =@"你好周杰伦";
//
//    NSMutableAttributedString *mutaAttrString = [[NSMutableAttributedString alloc] initWithString:@"你好周杰伦" attributes:@{NSForegroundColorAttributeName:[UIColor blackColor]}];
//    NSRange keywordsRange = [address.lowercaseString rangeOfString:@"你好"];
//    if(keywordsRange.location != NSNotFound) {
//        [mutaAttrString setAttributes: @{NSForegroundColorAttributeName:[UIColor redColor]} range:keywordsRange];
//    }
//    addrLabel.attributedText = [mutaAttrString copy];
//
    
//    addrLabel.text = address;


//    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
//    btn.backgroundColor = [UIColor redColor];
//    btn.frame = CGRectMake(0, 0, 100, 100);
//    [self.view addSubview:btn];
//    [btn addTarget:self action:@selector(test) forControlEvents:UIControlEventTouchUpInside];
//    
//    self.scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 110, self.view.frame.size.width, 250)];
//    self.scrollView.pagingEnabled = YES;
//    [self.view addSubview:self.scrollView];
//    
//    UIView *view1 = UIView.new;
//    view1.frame = CGRectMake(0, 0, self.view.frame.size.width, 1000);
//    view1.backgroundColor = [UIColor yellowColor];
//    
//    UIView *view2 = UIView.new;
//    view2.frame = CGRectMake(self.view.frame.size.width, 0, self.view.frame.size.width, 500);
//    view2.backgroundColor = [UIColor orangeColor];
//    [self.scrollView addSubview:view1];
//    [self.scrollView addSubview:view2];
    
    
//    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(test1)];
//    UIImageView *view = [UIImageView new];
//    view.userInteractionEnabled = YES;
//    view.backgroundColor = [UIColor yellowColor];
//    view.frame = CGRectMake(50, 50, 50, 50);
//    [view addGestureRecognizer:tap];
//    [btn addSubview:view];

//    NSString *abb = @"你们好范德萨记录卡风刀霜剑阿里";
//    NSString *result = [abb appendElipsis:10];
//    NSString *abbc = @"霜剑阿里";
//    NSString *result1 = [abbc appendElipsis:10];
//
//    NSString *abbc1 = @"霜剑阿里bbb";
//    NSString *result2 = [abbc1 appendElipsis:10];
//
//    NSString *abbc12 = @"霜剑阿里bb";
//      NSString *result23 = [abbc12 appendElipsis:10];
//
//    NSString *abbc124 = nil;
//      NSString *result234 = [abbc124 appendElipsis:10];
//    NSLog(@"%@ | %@ | %@ | %@",result,result1,result2,result23);

//    return;;
//    NSRange range =  [@"abcccb" rangeOfString: @"b"];
//
//
//    NSMutableDictionary *param = @{@"12":@"cd",@"ab":@"bc"}.mutableCopy;
//    [param addEntriesFromDictionary:@{@"12":@"32"}];
//
//
//    NSString *test = @"1234567890123456789012";
//    test = [test substringToIndex:20];
//    [Test testClass];
//    NSString *a = nil;
//    NSString *b = (a=@"1");
//
//    NSString *str =@"123";
//    NSLog(@"str:%p",str);
//
//    str =@"123";
//    NSLog(@"str1:%p",str);
//
//    self.testObj = [[Test alloc] init];
//    NSLog(@"%@",[self.testObj cellHeight])  ;
//    TestSon *testson = [[TestSon alloc] init];
//    NSLog(@"%@",[testson cellHeight]);
//
//
//    UIImageView *imageView = [UIImageView new];
//    [imageView sd_setImageWithURL:nil placeholderImage:nil];
    
    
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

   
//    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
//    btn.frame = CGRectMake(0, 0, 100, 100);
//    btn.backgroundColor = [UIColor redColor];
//    [self.view addSubview:btn];
//    [btn addTarget:self action:@selector(test) forControlEvents:UIControlEventTouchUpInside];

}

- (void)test {
    NSLog(@"%@",@"test");
//    [UIView animateWithDuration:0.6 animations:^{
//        self.scrollView.frame = CGRectMake(0, 110, self.view.frame.size.width, 400);
//        [self.scrollView setContentOffset:CGPointMake(self.view.frame.size.width, 0)];
//    }];
// 
//    BViewController *a = [[BViewController alloc] init];
//    if(self.tag) {
//        [[NSNotificationCenter defaultCenter] postNotificationName:@"12" object:nil];
//    }else {
//        [self presentViewController:a animated:YES completion:^{
//
//        }];
//
//    }
}
- (void)test1 {
    NSLog(@"%@",@"test1");
//    BViewController *a = [[BViewController alloc] init];
//    if(self.tag) {
//        [[NSNotificationCenter defaultCenter] postNotificationName:@"12" object:nil];
//    }else {
//        [self presentViewController:a animated:YES completion:^{
//
//        }];
//
//    }
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
