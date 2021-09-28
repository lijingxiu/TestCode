//
//  math.m
//  test
//
//  Created by lq on 2021/7/16.
//  Copyright © 2021 steven. All rights reserved.
//

#import "math.h"

@implementation math


- (instancetype)init {
    if(self = [super init]){
        
        [self test];
        [self maopao];
        
        [self qSort];
    }
    return self;
}

- (void)test {
    NSMutableArray *arr = [[NSMutableArray alloc] initWithObjects:@"1",@"2", nil];
    int i = 0;
    
    NSLog(@"%@", arr[i++]);
}


void quick_sort(int a[], int l, int r)
{
    if (l < r)
    {
        int i,j,x;

        i = l;
        j = r;
        x = a[i];
        while (i < j)
        {
            while(i < j && a[j] > x)
                j--; // 从右向左找第一个小于x的数
            if(i < j)
                a[i++] = a[j];
            printf("%d", a[0]);

            while(i < j && a[i] < x)
                i++; // 从左向右找第一个大于x的数
            if(i < j)
                a[j--] = a[i];
        }
        a[i] = x;
        quick_sort(a, l, i-1); /* 递归调用 */
        quick_sort(a, i+1, r); /* 递归调用 */
    }
}

- (void)qSort {
    int array[10] = {24, 17, 85, 13, 9, 54, 76, 45, 30, 63};
    int num = sizeof(array)/sizeof(int);

    quick_sort(array, 0, num-1);
    
    for(int i = 0; i < num; i++) {
    
        printf("%d", array[i]);
        
        if(i == num-1) {
        
            printf("\n");
            
        }
        
        else {
        
            printf(" ");
            
        }
        
    }
    
}
- (void)maopao {
    int array[10] = {24, 17, 85, 13, 9, 54, 76, 45, 5, 63};
        
    int num = sizeof(array)/sizeof(int);
    for(int i = 0; i < num-1; i++) {
    
        for(int j = 0; j < num - 1 - i; j++) {
        
            if(array[j] < array[j+1]) {
            
                int tmp = array[j];
                
                array[j] = array[j+1];
                
                array[j+1] = tmp;
                
            }
            
        }
        
    }
        
        for(int i = 0; i < num; i++) {
        
            printf("%d", array[i]);
            
            if(i == num-1) {
            
                printf("\n");
                
            }
            
            else {
            
                printf(" ");
                
            }
            
        }
}



@end
