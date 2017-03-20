//
//  SignupViewViewController.m
//  NetworkPractice
//
//  Created by abyssinaong on 2017. 3. 16..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "SignupViewViewController.h"
#import "DataCenter.h"

@interface SignupViewViewController ()
<UITextFieldDelegate>


@end

@implementation SignupViewViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.username.delegate = self;
    self.username.tag = 1;
    self.password1.delegate = self;
    self.password1.tag = 2;
    self.password2.delegate = self;
    self.password2.tag = 3;
    
    
}
- (IBAction)signupAction:(id)sender {
    
    if ([self.username.text isEqualToString:@""] || [self.password1.text isEqualToString:@""] || [self.password2.text isEqualToString:@""]) {
        
        NSLog(@"세곳을 모두 적어 주세요");
        [self makeAlertViewControllerTitle:@"입력오류" setMessage:@"세곳 모두 적어 주세요!" setActionTitle:@"확인"];
        
    } else if (![self.password1.text isEqualToString:self.password2.text]) {
        
        NSLog(@"비빌 번호를 다시 확인해주세요");
        [self makeAlertViewControllerTitle:@"입력오류" setMessage:@"비빌번호를 다식 확인해 주세요!" setActionTitle:@"확인"];
        
    } else {
        [[DataCenter shareData] dataCenterSignupInsertUsername:self.username.text insertPassword1:self.password1.text isertPassword2:self.password2.text loginCompletion:^(BOOL isSuccess) {
            
            if(isSuccess) {
                
                NSLog(@"test");
                [self dismissViewControllerAnimated:YES completion:nil];
            } else {
                
                NSLog(@"다시 아이디 넣으세요");
                [self makeAlertViewControllerTitle:@"입력오류" setMessage:@"동일한 아이디가 있습니다!" setActionTitle:@"확인"];
            }
            
        }];
    }
    
    
    
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    if (textField.tag == 1) {
        
        self.username.text = textField.text;
        [self.username resignFirstResponder];
        [self.password1 becomeFirstResponder];
    } else if (textField.tag == 2) {
        
        self.password1.text = textField.text;
        [self.password1 resignFirstResponder];
        [self.password2 becomeFirstResponder];
        
    } else {
        
        self.password2.text = textField.text;
        [self.password2 resignFirstResponder];
        
    }
    
    
    return YES;
}



- (void)makeAlertViewControllerTitle:(NSString *)conTitle
                          setMessage:(NSString *)conMessage
                      setActionTitle:(NSString *)actionTitle
{
    
    UIAlertController *alerView = [UIAlertController alertControllerWithTitle:conTitle message:conMessage preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *done = [UIAlertAction actionWithTitle:actionTitle style:UIAlertActionStyleDefault handler:nil];
    
    [alerView addAction:done];
    
    [self presentViewController:alerView animated:YES completion:nil];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
