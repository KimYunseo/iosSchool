//
//  ViewController.m
//  ViewPractice01
//
//  Created by abyssinaong on 2017. 2. 3..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIView *mainView = [[UIView alloc] initWithFrame:CGRectMake(15, self.view.frame.size.height -45, self.view.frame.size.width -30, 30)];
    mainView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:mainView];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
