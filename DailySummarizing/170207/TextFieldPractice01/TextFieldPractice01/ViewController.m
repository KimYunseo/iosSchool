//
//  ViewController.m
//  TextFieldPractice01
//
//  Created by abyssinaong on 2017. 2. 7..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextFieldDelegate>
//@property UITextField *beforTF;
@property UITextField *mainTf02;

@end
/* borderStyle
 UITextBorderStyleNone,
 UITextBorderStyleLine,
 UITextBorderStyleBezel,
 UITextBorderStyleRoundedRect
 */

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UITextField *mainTf01 = [[UITextField alloc]initWithFrame:CGRectMake(40, 100, 200, 50)];
    mainTf01.borderStyle = UITextBorderStyleRoundedRect;
    mainTf01.textAlignment =NSTextAlignmentCenter;
    mainTf01.textColor = [UIColor blackColor];
    mainTf01.delegate = self;
    mainTf01.tag = 10;
    
    self.mainTf02 = [[UITextField alloc]initWithFrame:CGRectMake(40, 170, 200, 50)];
    self.mainTf02.borderStyle = UITextBorderStyleRoundedRect;
    self.mainTf02.textAlignment =NSTextAlignmentCenter;
    self.mainTf02.textColor = [UIColor blackColor];
    self.mainTf02.delegate = self;
    self.mainTf02.tag = 20;
    
    [self.view addSubview:mainTf01];
    [self.view addSubview:self.mainTf02];
    
}

//- (BOOL)textFieldShouldClear:(UITextField *)textField
//{
//    
//    return YES;
//}



- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
//    NSString
    if(textField.text.length ==5)
    {
        
        
    }
    return YES;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if(textField.tag == 10){
        
        [self.mainTf02 becomeFirstResponder];
        
    } else if(textField.tag == 20)
    {
        [textField resignFirstResponder];
    } else {
        NSLog(@"오류! 다시한번 살펴 보길");
    }
    
        return NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
