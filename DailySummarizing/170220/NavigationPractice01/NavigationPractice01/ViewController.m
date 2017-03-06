//
//  ViewController.m
//  NavigationPractice01
//
//  Created by abyssinaong on 2017. 2. 20..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewController.h"
#import "CustomView.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CustomView *mainView = [[CustomView alloc] initWithSelector:@selector(onTouchSignUpButton:) fromVC:self];
    mainView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    [self.view addSubview:mainView];
    
}

- (void)onTouchSignUpButton:(UIButton *)sender {
    NSLog(@"hah");
    SecondViewController *sVC = [[SecondViewController alloc] init];
//    SecondViewController *sVC = [self.storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];
    [self.navigationController pushViewController:sVC animated:YES];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
