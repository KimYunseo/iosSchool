//
//  ViewController.m
//  Test3
//
//  Created by abyssinaong on 2017. 3. 2..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()
<UIImagePickerControllerDelegate, UINavigationControllerDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *imgGO;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UITapGestureRecognizer *tapGest = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapAction:)];
    [self.view addGestureRecognizer:tapGest];
    
    
    
    
}

- (void)tapAction:(UITapGestureRecognizer *)sender{
    UIAlertController *actionAlert = [UIAlertController alertControllerWithTitle:@"사진불러오자" message:@"사진불러온다!!!" preferredStyle:UIAlertControllerStyleActionSheet];
    
    UIAlertAction *currentBtn = [UIAlertAction actionWithTitle:@"사진찍을거임" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        UIImagePickerController *photo = [[UIImagePickerController alloc] init];
        photo.sourceType = UIImagePickerControllerSourceTypeCamera;
        photo.delegate = self;
        [self presentViewController:photo animated:YES completion:nil];
        
    }];
    
    
    UIAlertAction *photo = [UIAlertAction actionWithTitle:@"사진가져올거임" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        UIImagePickerController *cameraCont = [[UIImagePickerController alloc] init];
        cameraCont.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
        cameraCont.allowsEditing = NO;
        cameraCont.delegate = self;
        [self presentViewController:cameraCont animated:YES completion:nil];
        
    }];
    
    
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"취소할거임" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        [actionAlert dismissViewControllerAnimated:YES completion:nil];
    }];
    
    [actionAlert addAction:currentBtn];
    [actionAlert addAction:photo];
    [actionAlert addAction:cancel];
    [self presentViewController:actionAlert animated:YES completion:nil];
    
}


-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info{
    
    
    UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];
    self.imgGO.image = image;
    
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    
    [picker dismissViewControllerAnimated:YES completion:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
