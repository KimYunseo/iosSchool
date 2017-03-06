//
//  ViewController.m
//  AlgoPractice01
//
//  Created by abyssinaong on 2017. 2. 21..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    [self greatestCommonDivisorSetFirstNum:18 setSecondNum:12];
    
    
    
    
}

- (void)greatestCommonDivisorSetFirstNum:(NSInteger)firstNum
                            setSecondNum:(NSInteger)secondNum {
    
    NSMutableArray *array= [[NSMutableArray alloc]init];
    NSMutableArray *array01 = [[NSMutableArray alloc] init];
    
    if(firstNum < secondNum) {
        for (NSInteger i = 2; i<= firstNum; i++) {
                if ((firstNum % i == 0) && (secondNum % i == 0)) {
                    [array addObject:[NSString stringWithFormat:@"%lu", i]];
            }
        }
        for (NSInteger i = 1; i<= firstNum; i++) {
            
            for (NSInteger j = 1; j <= secondNum; j++) {
                if (firstNum * i == secondNum * j) {
                    [array01 addObject:[NSString stringWithFormat:@"%lu", firstNum * i]];
                }
            }
        }
    } else {
        
        for (NSInteger i = 2; i<= secondNum; i++) {
            if ((firstNum % i == 0) && (secondNum % i == 0)) {
                [array addObject:[NSString stringWithFormat:@"%lu", i]];
            }
        }
        for (NSInteger i = 1; i<= secondNum; i++) {
            
            for (NSInteger j = 1; j <= secondNum; j++) {
                if (firstNum * i == secondNum * j) {
                    [array01 addObject:[NSString stringWithFormat:@"%lu", secondNum * j]];
                }
            }
        }
    }
    
    
    NSLog(@"%@,  %@", array[array.count-1], array01[0]);
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
