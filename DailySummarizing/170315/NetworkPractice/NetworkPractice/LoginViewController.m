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

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.username.delegate = self;
    self.username.tag = 1;
    self.password.delegate = self;
    self.password.tag = 2;
    
}
- (IBAction)loginAction:(id)sender {
    
    if ([self.username.text isEqualToString:@""] || [self.password.text isEqualToString:@""]) {
        
        NSLog(@"아이디 비번 치세요");
        
    } else {
        
//        [[DataCenter shareData] loginSetName:self.username.text setPassword:self.password.text setBloc:^BOOL(BOOL boolValue) {
//            if () {
//                <#statements#>
//            }
//            [self.navigationController popViewControllerAnimated:YES];
//        }];
        
        [[DataCenter shareData] loginSetName:self.username.text setPassword:self.password.text loginCompletion:^(BOOL isSuccess) {
            
            if(isSuccess) {
                
                NSLog(@"test");

                [self dismissViewControllerAnimated:YES completion:nil];
                //                [self.navigationController popViewControllerAnimated:YES];
//                UIStoryboard *story = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
//                [story instantiateViewControllerWithIdentifier:@"MainCollectionVC"];
//                MainCollectionVC *mainVC = [story instantiateViewControllerWithIdentifier:@"MainCollectionVC"];
//                [self.navigationController popToViewController:mainVC animated:YES];
            } else {
                
                NSLog(@"다시 아이디 넣으세요");
                
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
