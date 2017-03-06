//
//  LoginViewController.m
//  PlistPractice
//
//  Created by abyssinaong on 2017. 3. 5..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "LoginViewController.h"
#import "MainPageViewController.h"
#import "DataCenter.h"

@interface LoginViewController ()
@property (weak, nonatomic) IBOutlet UITextField *idTextField;
@property (weak, nonatomic) IBOutlet UITextField *pwTextField;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

//로그인 버튼을 눌러주면 아이디와 패스워드를 확인해 주는 버튼 액션
- (IBAction)loginAction:(id)sender {
    if ([[DataCenter shareData] findID:self.idTextField.text findPW:self.pwTextField.text]) {
        MainPageViewController *mainVC = [self.storyboard instantiateViewControllerWithIdentifier:@"MainPageViewController"];
        [self presentViewController:mainVC animated:YES completion:nil];
    } else {
        
        UIAlertController *alert = [[UIAlertController alloc] init];
        alert = [UIAlertController alertControllerWithTitle:@"일치하지 않습니다." message:@"아이디가 다르거나 비빌번호가 정확하지 않습니다." preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction *done = [UIAlertAction actionWithTitle:@"Done" style:UIAlertActionStyleDefault handler:nil];
        
        [alert addAction:done];
        [self presentViewController:alert animated:YES completion:nil];
        
    }
    
    
    
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
