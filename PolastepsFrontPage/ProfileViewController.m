//
//  ProfileViewController.m
//  PolastepsFrontPage
//
//  Created by abyssinaong on 2017. 2. 22..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ProfileViewController.h"
#import "ProfileUIView.h"
#import "DataCenter.h"

@interface ProfileViewController ()<ProfileUIViewDelegate, UINavigationControllerDelegate, UIImagePickerControllerDelegate>

@property (nonatomic, weak) UIBarButtonItem *leftBar;
@property (nonatomic, weak) ProfileUIView *profilePic;
@property (nonatomic, weak) ProfileUIView *firstName;
@property (nonatomic, weak) ProfileUIView *lastName;
@property (nonatomic, weak) ProfileUIView *hometown;

@end

@implementation ProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //네비게이션 바 버튼
    self.navigationItem.title = @"Profile settings";
    //네비게이션 왼쪽버튼
    UIBarButtonItem *leftBar = [[UIBarButtonItem alloc] initWithTitle:@"Cancel" style:UIBarButtonItemStylePlain target:self action:@selector(popAction:)];
    [leftBar setAccessibilityIdentifier:@"leftBar"];
    self.leftBar = leftBar;
    self.navigationItem.leftBarButtonItem = leftBar;

    UIBarButtonItem *rightBar = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(rightButtonAction:)];
    [rightBar setAccessibilityIdentifier:@"rightBar"];
    self.navigationItem.rightBarButtonItem = rightBar;
    
    
    CGFloat m = self.view.frame.size.width;
    
    UIScrollView *mainScroll = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, m, self.view.frame.size.height-64)];
    [self.view addSubview:mainScroll];
    [mainScroll setContentSize:CGSizeMake( m, self.view.frame.size.height)];
    mainScroll.backgroundColor = [UIColor lightGrayColor];
    
    ProfileUIView *profilePic = [[ProfileUIView alloc] initWithPicFrame:CGRectMake(0, 0, m, 140)];
    [mainScroll addSubview:profilePic];
    profilePic.delegate = self;
    profilePic.tag = 1;
    
    self.profilePic = profilePic;
    
    CGFloat offsetY = profilePic.frame.size.height + 1;
    ProfileUIView *firstName = [[ProfileUIView alloc] initWithNameFrame:CGRectMake(0, offsetY, m, 70) setTitle:@"First name"];
    firstName.delegate = self;
    firstName.tag =2;
    
   
    firstName.firstTextView.text = [DataCenter sharedInstance].firstName;
    
    
    [mainScroll addSubview:firstName];
    self.firstName = firstName;
    
    offsetY += firstName.frame.size.height + 1;
    ProfileUIView *lastName = [[ProfileUIView alloc] initWithNameFrame:CGRectMake(0, offsetY, m, 70) setTitle:@"Last name"];
    lastName.tag = 3;
    lastName.firstTextView.text = [[NSUserDefaults standardUserDefaults] objectForKey:@"lastName"];
    [mainScroll addSubview:lastName];
    self.lastName = lastName;
    lastName.delegate = self;
    
    offsetY += lastName.frame.size.height + 1;
    ProfileUIView *hometown = [[ProfileUIView alloc] initWithNameFrame:CGRectMake(0, offsetY, m, 70) setTitle:@"Hometown"];
    [mainScroll addSubview:hometown];
    hometown.firstTextView.text = [[NSUserDefaults standardUserDefaults] objectForKey:@"hometown"];
    hometown.tag = 4;
    self.hometown = hometown;
    hometown.delegate = self;
    
    offsetY += hometown.frame.size.height + 1;
    ProfileUIView *detail = [[ProfileUIView alloc] initWithDetailFrame:CGRectMake(0, offsetY, m, 252)];
    [mainScroll addSubview:detail];
    
    NSLog(@"NSData %@",[DataCenter sharedInstance].profileImage);
    NSLog(@"NSUserDefualt %@", [[NSUserDefaults standardUserDefaults] objectForKey:@"profileImage"]);
    
    
    //프로필 이미지에 데이터가 있을 경우
    [profilePic picChange:[DataCenter sharedInstance].profileImage];

}


- (void)rightButtonAction:(UIBarButtonItem *)right{
   
    if ([right.accessibilityIdentifier isEqualToString:@"rightBar"]) {
        [[DataCenter sharedInstance] imageSave:UIImagePNGRepresentation(self.profilePic.picImag.image)];
        [NSNotificationCenter.defaultCenter postNotificationName:@"profileChange" object:@"change" userInfo:@{@"profileImage":@"imageData"}];
        
        [[DataCenter sharedInstance] firstNameSave:self.firstName.firstTextView.text];
//        [self firstNamePost];
        [[DataCenter sharedInstance] lastNameSave:self.lastName.firstTextView.text];
        
        
        [[DataCenter sharedInstance] hometownSave:self.hometown.firstTextView.text];
        [self.navigationController popViewControllerAnimated:YES];
    } else {
        
        NSLog(@"오른쪽버튼 안눌림!");
    }
    
   
    
}

- (void)takePhotoAction{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    
    UIAlertAction *takePhoto = [UIAlertAction actionWithTitle:@"Take a photo" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        UIImagePickerController *picker = [[UIImagePickerController alloc] init];
        picker.delegate = self;
        picker.allowsEditing = YES;
        picker.sourceType = UIImagePickerControllerSourceTypeCamera;
        
        [self presentViewController:picker animated:YES completion:NULL];
    }];
    
    UIAlertAction *chooseLibrary = [UIAlertAction actionWithTitle:@"Choose from library" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
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

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info {

    UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];
//    [[DataCenter sharedInstance] imageSave:UIImagePNGRepresentation(image)];
    
    [self.profilePic picChange:image];
    [picker dismissViewControllerAnimated:YES completion:nil];
    
}

- (void)popAction:(UIBarButtonItem *)sender{
    
    if ([sender.accessibilityIdentifier isEqualToString:@"leftBar"]) {
        [self.navigationController popViewControllerAnimated:YES];
    } else {
        NSLog(@"왼쪽버튼 안눌림!");
    }
    
}

- (void)nameInitial:(ProfileUIView *)view{
    if (view.tag == 2){
        NSLog(@"2번이다");
        [self.firstName firstNameSetting:view.firstTextView.text];

    } else if (view.tag == 3) {
        NSLog(@"3번이다");
        [self.lastName lastNameSetting:view.firstTextView.text];
        
    } else if (view.tag == 4) {
        [self.hometown hometownSetting:view.firstTextView.text];
        
    }
}

//- (void)firstNamePost{
//    
//    [NSNotificationCenter.defaultCenter postNotificationName:@"firstName" object:@"fName"];
//    
//}

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
