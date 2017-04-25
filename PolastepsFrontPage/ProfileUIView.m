//
//  ProfileUIView.m
//  PolastepsFrontPage
//
//  Created by abyssinaong on 2017. 2. 22..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ProfileUIView.h"
#import "DataCenter.h"
@interface ProfileUIView()<UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate>


@property (nonatomic, weak) UILabel *explainLB;
@property (nonatomic, weak) UILabel *nameLB;
@property (nonatomic, weak) UITextField *detail;
@property (nonatomic, weak) UIButton *btn;

@end

@implementation ProfileUIView

- (instancetype)initWithPicFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self createPicView];
        [self picFrame];
        [self setBackgroundColor:[UIColor whiteColor]];
    }
    return self;
}


- (instancetype)initWithNameFrame:(CGRect)frame
                         setTitle:(NSString *)str
{
    self = [super initWithFrame:frame];
    if (self) {
        [self nameTextViewSetTitle:str];
        [self nameFrame];
        [self setBackgroundColor:[UIColor whiteColor]];
    }
    return self;
}

- (instancetype)initWithDetailFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self createDetailTextField];
        [self setBackgroundColor:[UIColor whiteColor]];
    }
    return self;
}

- (void)createPicView{
    
    UIImageView *picImag = [[UIImageView alloc] init];
    [self addSubview:picImag];
    self.picImag =picImag;
    picImag.userInteractionEnabled = YES;
    picImag.backgroundColor = [UIColor yellowColor];
    
    UILabel *explainLB = [[UILabel alloc] init];
    [self addSubview:explainLB];
    self.explainLB = explainLB;
    explainLB.text = @"Tap to change your picture";
    explainLB.textColor = [UIColor lightGrayColor];
    explainLB.font = [UIFont systemFontOfSize:10.0];
    explainLB.textAlignment = NSTextAlignmentLeft;
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self addSubview:btn];
    self.btn = btn;
    btn.backgroundColor = [UIColor clearColor];
    [btn addTarget:self action:@selector(changeImage:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)changeImage:(UIButton *)sender{
    
    [self.delegate takePhotoAction];
    
 }

- (void)picFrame{
    
    CGFloat m = self.frame.size.width;
    
    self.picImag.frame = CGRectMake(0.027*m, 40, 60, 60);
    self.picImag.clipsToBounds = YES;
    self.picImag.layer.cornerRadius = 30;
    
    m = m - self.picImag.frame.size.width;
    
    self.explainLB.frame = CGRectMake(0.3*m, 40, m , 60);
    
    self.btn.frame = self.bounds;
}

- (void)picChange:(UIImage *)img{
    
    NSLog(@"test");
    self.picImag.image = img;
    
}

- (void)nameTextViewSetTitle:(NSString *)text{
    
    UILabel *nameLB = [[UILabel alloc] init];
    [self addSubview:nameLB];
    self.nameLB = nameLB;
    nameLB.text = text;
    nameLB.textAlignment = NSTextAlignmentLeft;
    nameLB.textColor = [UIColor lightGrayColor];
    nameLB.font = [UIFont systemFontOfSize:12.0];
    
    
    UITextField *firstTextView = [[UITextField alloc] init];
    [self addSubview:firstTextView];
    firstTextView.font = [UIFont boldSystemFontOfSize:15.0];
    firstTextView.textAlignment = NSTextAlignmentLeft;
    self.firstTextView = firstTextView;
    [firstTextView setAccessibilityIdentifier:@"rightTF"];
    firstTextView.delegate = self;
//    firstTextView.text = [DataCenter sharedInstance].firstName;
}

- (void)nameFrame{
    CGFloat m = self.frame.size.width;
    
    self.nameLB.frame = CGRectMake(0.027*m, 0, 0.315*m, 70);
    self.firstTextView.frame = CGRectMake(0.341*m, 0, 0.65*m, 70);
}

- (void)createDetailTextField{
    
    UITextField *detail = [[UITextField alloc] init];
    detail.textAlignment = NSTextAlignmentLeft;
    detail.delegate = self;
    self.detail = detail;
    detail.placeholder = @"Write a short story about yourself...";
    [detail setAccessibilityIdentifier:@"detailTF"];
    [self addSubview:detail];
    detail.frame = CGRectMake(0, 0, self.frame.size.width, 251);
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    if([textField.accessibilityIdentifier isEqualToString:@"rightTF"]){
        
        [self.delegate nameInitial:self];
        
    } else if ([textField.accessibilityIdentifier isEqualToString:@"detailTF"]){
        
        self.detail.text = textField.text;
    }
    
    [textField resignFirstResponder];
    
    return YES;
}

- (void)firstNameSetting:(NSString *)text{
//    [DataCenter sharedInstance].firstName = text;
    
//    [[DataCenter sharedInstance] firstNameSave:text];
//    [[NSUserDefaults standardUserDefaults] setObject:[DataCenter sharedInstance].firstName forKey:@"firstName"];
}

- (void)lastNameSetting:(NSString *)text{
//    [DataCenter sharedInstance].lastName = text;
//    [[NSUserDefaults standardUserDefaults] setObject:[DataCenter sharedInstance].lastName forKey:@"lastName"];
    
}

- (void)hometownSetting:(NSString *)text{
//    [DataCenter sharedInstance].hometown = text;
//    [[NSUserDefaults standardUserDefaults] setObject:[DataCenter sharedInstance].hometown forKey:@"hometown"];
    
}


@end
