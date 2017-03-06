//
//  ViewController.m
//  Test05
//
//  Created by abyssinaong on 2017. 3. 2..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, weak) UIDatePicker *testPicker;
@property (nonatomic, weak) UITextView *testView;
@property (nonatomic, weak) UIView *toolbar;
@property BOOL isUPKeyboard;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIDatePicker *testPicker = [[UIDatePicker alloc] init];
    testPicker.datePickerMode = UIDatePickerModeDate;
//    [testPicker addTarget:self action:@selector(testViewTextChange:) forControlEvents:UIControlEventValueChanged];
    self.testPicker = testPicker;
    
    UITextField *testField = [[UITextField alloc] init];

    testField.frame = CGRectMake(50, 100, 200, 50);
    [self.view addSubview:testField];
    testField.borderStyle = UITextBorderStyleBezel;
    [testField setInputView:testPicker];
    
    
    UITextView *testView = [[UITextView alloc] init];
    
    testView.frame = CGRectMake(50, 200, 200, 50);
    [self.view addSubview:testView];
    [testView setInputView:testPicker];
    testView.layer.borderWidth = 1;
    testView.layer.borderColor = [UIColor blackColor].CGColor;
    testView.editable = NO;
    self.testView = testView;
    
    
    CGFloat m = self.view.frame.size.width;
    CGFloat h = self.view.frame.size.height;
    UIView *toolbar = [[UIView alloc] init];
    toolbar.frame = CGRectMake(0, h+30, m, 30);
    toolbar.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:toolbar];
    self.toolbar =toolbar;
    
    UIButton *doneBtn  = [UIButton buttonWithType:UIButtonTypeCustom];
    doneBtn.frame = CGRectMake(toolbar.frame.size.width - 50, 0, 50, 30);
    [doneBtn setTitle:@"Done" forState:UIControlStateNormal];
    [doneBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [toolbar addSubview:doneBtn];
    [doneBtn addTarget:self action:@selector(testViewTextChange:) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    [NSNotificationCenter.defaultCenter addObserver:self selector:@selector(pickerNoit:) name:UIKeyboardWillShowNotification object:nil ];
    
}

- (void)testViewTextChange:(UIButton *)sender{
    NSLog(@"hahaha");
    self.testView.text = [NSDateFormatter localizedStringFromDate:self.testPicker.date dateStyle:NSDateFormatterShortStyle timeStyle:NSDateFormatterShortStyle];
    [self.testPicker resignFirstResponder];
    
}

- (void)pickerNoit:(NSNotification *)noti{
    
    CGSize pickersize = [[noti.userInfo objectForKey:UIKeyboardFrameEndUserInfoKey] CGRectValue].size;
    CGRect originFrame = self.toolbar.frame;
    
    [UIView animateWithDuration:5 animations:^{
        self.toolbar.frame = CGRectMake(originFrame.origin.x, self.view.frame.size.height- pickersize.height -30 ,originFrame.size.width, originFrame.size.height);
    }];

    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
