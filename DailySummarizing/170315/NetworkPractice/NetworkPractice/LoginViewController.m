//
//  LoginViewController.m
//  NetworkPractice
//
//  Created by abyssinaong on 2017. 3. 15..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "LoginViewController.h"
#import "DataCenter.h"
#import "NetworkModule.h"
#import "MainCollectionVC.h"

@interface LoginViewController ()
<UITextFieldDelegate>

@end

@implementation LoginViewController


- (void)viewDidAppear:(BOOL)animated{
    //NSUserDefaults에 Authorization에 대한 값이 logout 아닐경우 뷰컨트롤러를 해제시킨다.
    
    
    NSString *token = @"";
    token = [[NSUserDefaults standardUserDefaults] objectForKey:@"Authorization"];
    if ((NSInteger)token == 0) {
        NSLog(@"뷰 윌 어피어!!!");
        
    } else {
        
        
        NSLog(@"%@",[[NSUserDefaults standardUserDefaults] objectForKey:@"Authorization"]);
        dispatch_async(dispatch_get_main_queue(), ^{
            [self dismissViewControllerAnimated:YES completion:nil];
        });
        
        
        NSLog(@"디스미스!!!!");
        
    }
    
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    self.username.delegate = self;
    self.username.tag = 1;
    self.password.delegate = self;
    self.password.tag = 2;
    
}
- (IBAction)loginAction:(id)sender {
    
    [self.username resignFirstResponder];
    [self.password resignFirstResponder];
    
    if ([self.username.text isEqualToString:@""] || [self.password.text isEqualToString:@""]) {
        
        NSLog(@"아이디 비번 치세요");
        
    } else {
        
        [[DataCenter shareData] dataCenterLoginSetName:self.username.text setPassword:self.password.text loginCompletion:^(BOOL isSuccess, NSInteger errorCode) {
            
            if(isSuccess) {
                
                NSLog(@"test");

                [self dismissViewControllerAnimated:YES completion:nil];

            } else if (!isSuccess || errorCode == 400){
                
                UIAlertController *alerView = [UIAlertController alertControllerWithTitle:@"로그인 에러" message:@"다시 로그인해주세요" preferredStyle:UIAlertControllerStyleAlert];
                
                UIAlertAction *done = [UIAlertAction actionWithTitle:@"사용자 인증 실패." style:UIAlertActionStyleDefault handler:nil];
                
                [alerView addAction:done];
                
                [self presentViewController:alerView animated:YES completion:nil];
                NSLog(@"로그인 오류");
            } else {
                
                NSLog(@"로그인 페이지 로그인 부분 뭔가 잘못됨 확인 필요 에러코드 %ld", errorCode);
                
            }
        }];
    }
}

-  (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    
    if (textField.tag == 1) {
        
        [UIView animateWithDuration:0.4 animations:^{
            self.view.frame = CGRectMake(0, -self.view.frame.size.height/7, self.view.frame.size.width, self.view.frame.size.height);
        }];
        
    } else if (textField.tag == 2 ) {
        
        [UIView animateWithDuration:0.4 animations:^{
            self.view.frame = CGRectMake(0, -self.view.frame.size.height*2/7, self.view.frame.size.width, self.view.frame.size.height);
        }];
    }
    
    return YES;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    if (textField.tag == 1) {
        self.username.text = textField.text;
        [self.username resignFirstResponder];
        [self.password becomeFirstResponder];
        [UIView animateWithDuration:0.4 animations:^{
            self.view.frame = CGRectMake(0, -self.view.frame.size.height*2/7, self.view.frame.size.width, self.view.frame.size.height);
        }];
        
    } else if (textField.tag == 2 ) {
        self.password.text = textField.text;
        [self.password resignFirstResponder];
        [UIView animateWithDuration:0.4 animations:^{
            self.view.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
        }];
    }

    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
