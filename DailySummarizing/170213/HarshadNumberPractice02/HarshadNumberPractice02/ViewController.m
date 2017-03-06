//
//  ViewController.m
//  HarshadNumberPractice02
//
//  Created by abyssinaong on 2017. 2. 13..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextFieldDelegate>
@property UITextField *mainTextField;
@property UILabel *resultLB;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSInteger widthNnum = self.view.frame.size.width;
    NSInteger heightNum = self.view.frame.size.height;
    
    UIView *mainView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, widthNnum, heightNum)];
    [self.view addSubview:mainView];
    
    UILabel *explainLB = [[UILabel alloc] initWithFrame:CGRectMake(widthNnum/5, heightNum*3/16, widthNnum*3/5, heightNum*2/16)];
    explainLB.textColor =[UIColor blackColor];
    explainLB.numberOfLines =2;
    explainLB.text =@"Harshad Number란             '(수)/(자릿수의 합) = 정수'";
    [mainView addSubview:explainLB];
    
    UITextField *mainTextField = [[UITextField alloc] initWithFrame:CGRectMake(widthNnum/5, heightNum*5/16, widthNnum*3/5, heightNum/16)];
    mainTextField.textColor =[UIColor blackColor];
    mainTextField.borderStyle = UITextBorderStyleRoundedRect;
    mainTextField.layer.borderColor = [UIColor blackColor].CGColor;
    mainTextField.delegate = self;
    self.mainTextField = mainTextField;
    
    [mainView addSubview:mainTextField];
    
    
    UILabel *resultLB = [[UILabel alloc] initWithFrame:CGRectMake(widthNnum/5, heightNum*6/16+5, widthNnum*3/5, heightNum/16)];
    
    resultLB.textColor = [UIColor blackColor];
    resultLB.layer.borderWidth = 1;
    resultLB.layer.borderColor = [UIColor blackColor].CGColor;
    resultLB.textAlignment = NSTextAlignmentCenter;
    self.resultLB =resultLB;
    [mainView addSubview:resultLB];
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    NSInteger resultStatus = [self harshadNumberCarculrate:self.mainTextField.text];
    NSLog(@"%lu",resultStatus);
    // 넘어온 나머지 값이 0일 경우에만 Harshad Number! 아닌경우 Not Harshad Number!
    if( resultStatus == 0) {
        self.resultLB.text = @"Harshad Number!";
    } else {
        self.resultLB.text = @"Not Harshad Number!";
    }
    [self.mainTextField resignFirstResponder];
    return YES;
}

- (NSInteger)harshadNumberCarculrate:(NSString *)number
{
    // 자리수 들의 합은 (n+1)*n/2
    
    NSInteger numLength = number.length;
    NSInteger recivedNum = [number integerValue];
    NSInteger sumNum = 0;
//    NSLog(@"%lu",[[number substringWithRange:NSMakeRange(0, 0)] integerValue]);
    
    
    for(NSInteger i = 0 ; i<numLength ; i+=1){
        sumNum = sumNum + [[number substringWithRange:NSMakeRange(i, 1)] integerValue];
    }
    
    NSLog(@"더한 값 %lu", sumNum);
    NSInteger remainNum = recivedNum % sumNum;
    //    NSLog(@"자리수 %lu",numLength);
    NSLog(@"나머지 %lu",remainNum);
    return remainNum;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
