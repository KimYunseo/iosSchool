//
//  ViewController.m
//  TextField01
//
//  Created by abyssinaong on 2017. 2. 6..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextFieldDelegate>
@property UILabel *mainLB;
@property UITextField *mainTf;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIView *mainView = [[UIView alloc]initWithFrame:CGRectMake(50, 50, self.view.frame.size.width-100, 200)];
    
    
    
    self.mainTf = [[UITextField alloc]initWithFrame:CGRectMake(0, 0, mainView.frame.size.width-80, 50)];
    self.mainTf.borderStyle = UITextBorderStyleLine;
    self.mainTf.textColor = [UIColor blackColor];
    self.mainTf.backgroundColor = [UIColor whiteColor];
    self.mainTf.textAlignment = NSTextAlignmentCenter;
    
    self.mainLB = [[UILabel alloc] initWithFrame:CGRectMake(0, 60, mainView.frame.size.width-80, 50)];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(mainView.frame.size.width-80, 0, 50, 50);
    [btn setTitle:@"확인" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(actionBtn:) forControlEvents:UIControlEventTouchUpInside];
    
    self.mainTf.delegate=self;
    [self.view addSubview:mainView];
    [mainView addSubview:self.mainTf];
    [mainView addSubview:self.mainLB];
    [mainView addSubview:btn];
    
    
}

//- (void)tex
- (void)actionBtn:(UIButton *)sender
{
    NSString *textAppenading = @"결과 : ";
    [self.mainLB setText:[textAppenading stringByAppendingString:self.mainTf.text]];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    [textField resignFirstResponder];
    NSLog(@"%@", textField.text);
    NSString *textAppenading = @"결과 : ";
    [self.mainLB setText:[textAppenading stringByAppendingString:textField.text]];
    
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
