//
//  ViewController.m
//  Decimal
//
//  Created by abyssinaong on 2017. 2. 27..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self decimalSum:35];
    
    
}




- (void)decimalSum:(NSInteger)number {
    
    NSMutableArray *result = [[NSMutableArray alloc] init];
    for (NSInteger i = 2; i <= number; i ++) {
        NSMutableArray *array = [[NSMutableArray alloc] init];
        for (NSInteger j = 2; j <= i; j ++) {
            if (i % j == 0) {
                [array addObject:[NSString stringWithFormat:@"%lu", j]];
            }
        }
        if (array.count == 1) {
            [result addObject:array[0]];
        }
    }
    NSLog(@"%@",result);
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
