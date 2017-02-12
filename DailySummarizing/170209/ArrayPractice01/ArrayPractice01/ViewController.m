//
//  ViewController.m
//  ArrayPractice01
//
//  Created by abyssinaong on 2017. 2. 9..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIView *mainView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    mainView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:mainView];
    
    NSArray *list = @[@"1",@"1",@"3",@"3", @"6",@"7", @"8"];
    NSMutableArray *num01= [[NSMutableArray alloc] init];
//    NSMutableArray *num02= [[NSMutableArray alloc] init];
    
    for(NSString *rt in list)
    {
        if (![num01 containsObject:rt]) {
            [num01 addObject:rt];
        }
    }
    
    for(NSString *rt in num01)
    {
        NSLog(@"%@", rt);
        
    }
    
    
//    for(NSInteger i = 0 ;i < list.count ; i++){
//        
//        NSString *num = @"";
//        num = list[i];
//        
//        [num01 addObject:num];
//        
//    }
//    
//    [num01 addObject:@"0"];
//    
//    for(NSInteger i = 0 ;i < list.count ; i++){
//        
//        if(![num01[i] containsString:num01[i+1]]){
//            [num02 addObject:num01[i]];
//            NSLog(@"%@",num01[i] );
//        }
//    }
//    
//    for(NSInteger i = 0 ;i < num02.count ; i++){
//        NSLog(@"%@",num02[i] );
//    }

//

    UILabel *lb01 = [[UILabel alloc]initWithFrame:CGRectMake(0, 150, 100, 100)];
    
//    lb01.text = num;
    lb01.textColor = [UIColor blackColor];
    [self.view addSubview:lb01];
    


}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
