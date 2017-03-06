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

typedef NS_ENUM(NSInteger, TextFieldIdentifier)
{
    TextFieldIdentifierFirst,
    TextFieldIdentifierSecond
};

@interface ViewController ()
<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *idTextField;
@property (weak, nonatomic) IBOutlet UITextField *pwTextField;
@property (weak, nonatomic) LoginViewController *loginVC;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.idTextField.delegate = self;
    self.pwTextField.delegate = self;
    
    //LoginViewController를 현재 ViewController에 차일드 뷰로 올린다. 기기에 두 뷰가 올라와 있는 상태이다.
    LoginViewController *loginVC = [self.storyboard instantiateViewControllerWithIdentifier:@"LoginViewController"];
    [self addChildViewController:loginVC];
    [self.view addSubview:loginVC.view];
    
    //frame을 안보이는 상태로 숨겨놓은것
    loginVC.view.frame = CGRectMake(-self.view.frame.size.width, 0, self.view.frame.size.width, self.view.frame.size.height);
    loginVC.view.backgroundColor = [UIColor lightGrayColor];
    self.loginVC = loginVC;
    
    self.idTextField.tag = TextFieldIdentifierFirst;
    self.pwTextField.tag = TextFieldIdentifierSecond;
    
    
}

//저장된 아이디가 있는지 여부를 확인하여 저장해주고 다른 페이지로 연결해주는 버튼 액션
- (IBAction)saveIDAndPW:(id)sender {
    if (![self.idTextField.text isEqualToString:@""]) {
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
    } else {
        
        UIAlertController *alert = [[UIAlertController alloc] init];
        alert = [UIAlertController alertControllerWithTitle:@"아이디를 적으세요." message:@"아이디를 적지 않으셨습니다." preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction *done = [UIAlertAction actionWithTitle:@"Done" style:UIAlertActionStyleDefault handler:nil];
        [alert addAction:done];
        
        [self presentViewController:alert animated:YES completion:nil];
        
        
        
    }
   
    
}


//TextField delegate 설정을 해주어 자판의 return키를 눌렀을 때, 뷰에서 일어나는 행동에 대해 뷰컨트롤러가 반응하도록 delegate 메소드를 설정해준다.
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    if (textField.tag == TextFieldIdentifierFirst) {
        [self.idTextField resignFirstResponder];
        [self.pwTextField becomeFirstResponder];
    } else if (textField.tag == TextFieldIdentifierSecond) {
        [self.pwTextField resignFirstResponder];
    } else {
        NSLog(@"에러임");
    }
    
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
