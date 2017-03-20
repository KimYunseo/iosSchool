//
//  InsertViewController.m
//  NetworkPractice
//
//  Created by abyssinaong on 2017. 3. 17..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "InsertViewController.h"
#import "DataCenter.h"

@interface InsertViewController ()
<UITextFieldDelegate, UITextViewDelegate, UINavigationControllerDelegate, UIImagePickerControllerDelegate, UIImagePickerControllerDelegate>

@end

@implementation InsertViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.insertTitle.delegate = self;
    self.insertTitle.tag = 1;
    self.insertContent.delegate = self;
    self.insertContent.tag = 2;
    
}

- (IBAction)insertImageAction:(id)sender {
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    
    UIAlertAction *takePhoto = [UIAlertAction actionWithTitle:@"직접 사진 가져오기" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        UIImagePickerController *picker  = [[UIImagePickerController alloc] init];
        
        picker.delegate = self;
        
        picker.allowsEditing = YES;
        picker.sourceType = UIImagePickerControllerSourceTypeCamera;
        
        [self presentViewController:picker animated:YES completion:NULL];
    }];
    
    UIAlertAction *chooseLibrary = [UIAlertAction actionWithTitle:@"라이브러리로 가져오기" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        UIImagePickerController *picker = [[UIImagePickerController alloc] init];
        picker.delegate = self;
        picker.allowsEditing = YES;
        picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
        
        [self presentViewController:picker animated:YES completion:NULL];
    }];
    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"cancel" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [alertController dismissViewControllerAnimated:YES completion:nil];
    }];
    
    [alertController addAction:takePhoto];
    [alertController addAction:chooseLibrary];
    [alertController addAction:cancelAction];
    
    
    [self presentViewController:alertController animated:YES completion:nil];
    
}
- (IBAction)saveAction:(id)sender {
    
    [[DataCenter shareData] dataCenterMultipartInsert:self.insertTitle.text insertContent:self.insertContent.text insertImage:self.insertImage.image multiComplition:^(BOOL isSuccess) {
        if (isSuccess) {
            
            NSLog(@"저장 되었습니다.");
            
        } else {
            
            NSLog(@"저장 실패");
            
        }
        
    }];
    
    
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info{
    
    UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];
    self.insertImage.image = image;
    [picker dismissViewControllerAnimated:YES completion:nil];
    
}




- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    if (textField.tag == 1) {
        self.insertTitle.text = textField.text;
        
        [self.insertTitle resignFirstResponder];
        
    } else {
        
        self.insertContent.text = textField.text;
        [self.insertContent resignFirstResponder];
        
    }
    
    
    return YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
