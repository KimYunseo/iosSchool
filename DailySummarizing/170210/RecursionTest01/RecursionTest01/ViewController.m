//
//  ViewController.m
//  RecursionTest01
//
//  Created by abyssinaong on 2017. 2. 10..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextFieldDelegate>


@property (weak) UITextField *mainTF;
@property (weak) UILabel *resultLB;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    NSInteger widthNum = self.view.frame.size.width;
//    NSInteger heightNum = self.view.frame.size.height;
    
    UITextField *mainTF = [[UITextField alloc] initWithFrame:CGRectMake(widthNum/3, 80, widthNum/3, 40)];
    mainTF.borderStyle = UITextBorderStyleRoundedRect;
    mainTF.layer.borderColor = [UIColor blackColor].CGColor;
    [self.view addSubview:mainTF];
    mainTF.delegate =self;
    self.mainTF = mainTF;
    
    
    UILabel *resultLB = [[UILabel alloc] initWithFrame:CGRectMake(widthNum/3, 120, widthNum/3, 40)];
    resultLB.textColor = [UIColor blackColor];
    self.resultLB = resultLB;
    [self.view addSubview:resultLB];
    
    UIButton *factorialBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    factorialBtn.frame=CGRectMake(widthNum/12, 160, widthNum/12*4, 40);
    factorialBtn.layer.borderColor = [UIColor blackColor].CGColor;
    [factorialBtn setTitle:@"팩토리얼" forState:UIControlStateNormal];
    [factorialBtn setTitle:@"계산" forState:UIControlStateHighlighted];
    [factorialBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [factorialBtn setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    [factorialBtn addTarget:self action:@selector(factorialResult:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:factorialBtn];
    
    UIButton *piboBtn = [[ButtonClass alloc] createBtn];
    piboBtn.frame = CGRectMake(widthNum/12*6, 160, widthNum/12*4, 40);
    [piboBtn setTitle:@"피보나치" forState:UIControlStateNormal];
    [piboBtn addTarget:self action:@selector(piboAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:piboBtn];
    
    
    
    
}

//자판기 return 누르면 자판기 내려가는것
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

//팩토리얼 버튼 누르면 계산
- (void)factorialResult:(UIButton *)sender{
    [self.resultLB setText:[NSString stringWithFormat:@"%lu", [self stringToInteger:self.mainTF.text]]];
}
//받은 문자열 값을 integer 값으로 고치고 재귀함수 부른다.
- (NSInteger)stringToInteger:(NSString *)string
{
    NSInteger number01 = [string integerValue];
    return [self recursionChange:number01];
}
// 팩토리얼 재귀함수
- (NSInteger)recursionChange:(NSInteger)num
{
    NSInteger result;
    if(num == 0){
     
        result = 1;
    } else {
        result = num * [self recursionChange: num - 1];
    }
    return result;
}
//팩토리얼 끝

//피보나치 계산
- (void)piboAction:(UIButton *)sender
{
    [self.resultLB setText:[NSString stringWithFormat:@"%lu", [self stringToIntegerWithPibo:self.mainTF.text]]];
}


- (NSInteger)stringToIntegerWithPibo:(NSString *)string
{
    NSInteger number01 = [string integerValue];
    return [self pibonachiResult:number01];
}

- (NSInteger)pibonachiResult:(NSInteger)number
{
    NSInteger result;
    if(number==0){
        result = 0;
        return result;
        
    } else if (number == 1) {
        result = 1;
        return result;
    } else {
        result = [self pibonachiResult:number-1] + [self pibonachiResult:number-2];
    return result;
    }
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
