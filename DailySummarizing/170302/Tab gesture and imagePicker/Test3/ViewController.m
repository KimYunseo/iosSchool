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
    
    //tab gesture 연습!
    UITapGestureRecognizer *tapGest = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapAction:)];
    [self.view addGestureRecognizer:tapGest];
    
    
    
    
}

//화면을 탭 했을 때 일어나는 행위
- (void)tapAction:(UITapGestureRecognizer *)sender{
    //actionsheet를 사용하여 alert 컨트롤러를 사용
    UIAlertController *actionAlert = [UIAlertController alertControllerWithTitle:@"사진불러오자" message:@"사진불러온다!!!" preferredStyle:UIAlertControllerStyleActionSheet];
    
    //사진을 찍는 alert action을 넣는다.
    UIAlertAction *currentBtn = [UIAlertAction actionWithTitle:@"사진찍을거임" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        UIImagePickerController *photo = [[UIImagePickerController alloc] init];
        photo.sourceType = UIImagePickerControllerSourceTypeCamera;
        photo.delegate = self;
        [self presentViewController:photo animated:YES completion:nil];
        
    }];
    
    //사진을 라이브러리에서 가져오는 action
    UIAlertAction *photo = [UIAlertAction actionWithTitle:@"사진가져올거임" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        UIImagePickerController *cameraCont = [[UIImagePickerController alloc] init];
        cameraCont.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
        cameraCont.allowsEditing = NO;
        cameraCont.delegate = self;
        [self presentViewController:cameraCont animated:YES completion:nil];
        
    }];
    
    // cancel action
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"취소할거임" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        [actionAlert dismissViewControllerAnimated:YES completion:nil];
    }];
    
    [actionAlert addAction:currentBtn];
    [actionAlert addAction:photo];
    [actionAlert addAction:cancel];
    [self presentViewController:actionAlert animated:YES completion:nil];
    
}

//이미지 선택했을 때의 이미지를 imageView에 넣는 메서드
-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info{
    
    
    UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];
    self.imgGO.image = image;
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

//image picker에서 캔슬했을 때의 메소드
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    
    [picker dismissViewControllerAnimated:YES completion:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
