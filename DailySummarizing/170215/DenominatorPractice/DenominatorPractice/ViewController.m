//
//  ViewController.m
//  DenominatorPractice
//
//  Created by abyssinaong on 2017. 2. 15..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextFieldDelegate>

@property UITextField *mainText;
@property UILabel *mainLB;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    UITextField *mainText = [[UITextField alloc] initWithFrame:CGRectMake(40, 40, 100, 50)];
    mainText.textColor =[UIColor blackColor];
    mainText.borderStyle = UITextBorderStyleRoundedRect;
    mainText.delegate = self;
    self.mainText = mainText;
    [self.view addSubview:mainText];
    
    UILabel *mainLB = [[UILabel alloc] initWithFrame:CGRectMake(40, 100, 100, 50)];
    mainLB.textColor = [UIColor blackColor];
    mainLB.layer.borderWidth = 1;
    mainLB.layer.borderColor = [UIColor blackColor].CGColor;
    self.mainLB = mainLB;
    [self.view addSubview:self.mainLB];
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    self.mainLB.text = [ToolBox denominatorCaculrator:self.mainText.text];
    
    return YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
