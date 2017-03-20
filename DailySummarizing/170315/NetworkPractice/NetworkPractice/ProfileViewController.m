//
//  ProfileViewController.m
//  NetworkPractice
//
//  Created by abyssinaong on 2017. 3. 15..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ProfileViewController.h"
#import "DataCenter.h"
#import "LoginViewController.h"

@interface ProfileViewController ()
<UITextFieldDelegate>

@end

@implementation ProfileViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.secondName.delegate = self;
    self.firstName.delegate =self;
    self.eMail.delegate =self;
}

- (IBAction)logoutAction:(id)sender {
    
    [[DataCenter shareData] dataCenterLogoutSetCompletion:^(BOOL isSuccess) {
        if(!isSuccess) {
            
            UIStoryboard *loginStory = [UIStoryboard storyboardWithName:@"Login" bundle:nil];
            LoginViewController *loginVC = [loginStory instantiateViewControllerWithIdentifier:@"LoginViewController"];
            dispatch_async(dispatch_get_main_queue(), ^{
                
                [self presentViewController:loginVC animated:YES completion:nil];
                
            });
            
            
        }
    }];
    
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
