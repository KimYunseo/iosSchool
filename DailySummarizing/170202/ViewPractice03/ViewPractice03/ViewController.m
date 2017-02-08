//
//  ViewController.m
//  ViewPractice03
//
//  Created by abyssinaong on 2017. 2. 2..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIView *mainView = [[UIView alloc] initWithFrame:CGRectMake(30, 30, self.view.frame.size.width -100, self.view.frame.size.height -100)];
    [mainView setBackgroundColor:[UIColor greenColor]];
    [self.view addSubview:mainView];
    
    UILabel *mainLabel = [[UILabel alloc] initWithFrame:CGRectMake(15, 15, mainView.frame.size.width-30, mainView.frame.size.height -30)];
    
    [mainLabel setText:@"하하하하핳"];
    [mainLabel setTextColor:[UIColor grayColor]];
    [mainLabel setTextAlignment:NSTextAlignmentCenter];
    [mainView  addSubview:mainLabel];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
