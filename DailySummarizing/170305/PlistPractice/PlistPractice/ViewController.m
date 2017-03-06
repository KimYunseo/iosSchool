//
//  ViewController.m
//  PlistPractice
//
//  Created by abyssinaong on 2017. 3. 5..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewController.h"
#import "DataCenter.h"
#import "LoginViewController.h"

@interface ViewController ()
<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *idTextField;
@property (weak, nonatomic) IBOutlet UITextField *pwTextField;
@property (weak, nonatomic) LoginViewController *loginVC;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.idTextField.delegate = self;
    self.pwTextField.delegate = self;
    LoginViewController *loginVC = [self.storyboard instantiateViewControllerWithIdentifier:@"LoginViewController"];
    [self addChildViewController:loginVC];
    [self.view addSubview:loginVC.view];
    loginVC.view.frame = CGRectMake(-self.view.frame.size.width, 0, self.view.frame.size.width, self.view.frame.size.height);
    loginVC.view.backgroundColor = [UIColor lightGrayColor];
    self.loginVC = loginVC;
    
    
}

- (IBAction)saveIDAndPW:(id)sender {
    
    if (![[DataCenter shareData] findID:self.idTextField.text]) {
        [[DataCenter shareData] saveID:self.idTextField.text savePW:self.pwTextField.text];
        NSLog(@"가입되었습니다.");
        UIAlertController *alert = [[UIAlertController alloc] init];
        alert = [UIAlertController alertControllerWithTitle:@"가입되었습니다.." message:@"가입한 아이디로 로그인해주세요." preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction *done = [UIAlertAction actionWithTitle:@"Done" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
//            LoginViewController *loginVC = [self.storyboard instantiateViewControllerWithIdentifier:@"LoginViewController"];
//            [self presentViewController:loginVC animated:YES completion:nil];
            
            [UIView animateWithDuration:0.5 animations:^{
                self.loginVC.view.frame = CGRectMake(-50, 0, self.view.frame.size.width, self.view.frame.size.height);
            }];
            
            
            
            
        }];
        [alert addAction:done];
        [self presentViewController:alert animated:YES completion:nil];
        
        
    } else {
        
        NSLog(@"동일한 아이디가 있습니다.");
        UIAlertController *alert = [[UIAlertController alloc] init];
        alert = [UIAlertController alertControllerWithTitle:@"같은 아이디가 존재합니다." message:@"다른 아이디를 사용해 주세요." preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction *done = [UIAlertAction actionWithTitle:@"Done" style:UIAlertActionStyleDefault handler:nil];
        [alert addAction:done];
        [self presentViewController:alert animated:YES completion:nil];
        
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
