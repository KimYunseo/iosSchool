//
//  ViewController.m
//  BlockTest
//
//  Created by abyssinaong on 2017. 3. 10..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewController.h"
typedef  void (^NumberCount)(NSInteger number);

@interface ViewController ()

@property void (^practice_func) (void);

@property NumberCount state;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
//    self.practice_func = ^{
//        
//        NSLog(@"practice bloc function!!");
//        
//    };
//    
//    void (^number_func) (NSInteger) = ^(NSInteger num){
//        NSLog(@"number_func result %ld", num);
//    };
//    
//    self.practice_func();
//    NSLog(@"===============================\n");
//    [self test];
//    NSLog(@"===============================\n");
//    number_func(50);
//    NSLog(@"===============================\n");
//    [self test2:^{
//        
//    }];

    
//    self.state = ^(NSInteger number){
//      
//        if (number == 1) {
//            NSLog(@"%ld", number);
//        } else {
//            NSLog(@"else %ld", number);
//        }
//    };
//    
//    //self.state(1);
//    
//    [self test3:self.state];
//    
    
    [self simpleMethod:^(NSString *name) {
        NSLog(@"inner Param %@", name);
    }];
    
    
}




- (void)test{
    
    self.practice_func();
    
}


- (void)simpleMethod:(void (^)(NSString *name))para{
    
    NSLog(@"befor StarBlock");
    
    para(@"in param");
    
    NSLog(@"after EndBlock");
    
}

- (void)test3:(void (^)(NSInteger num))prame{
  
    NSLog(@"first");
    prame(5);
    NSLog(@"last");
    
};

- (void)test2:(void (^)(void))parameter{
  

    
};


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
