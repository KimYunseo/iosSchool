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
    
    
    //UIDatePiker를 init함. UIDatePiker는 년월일을 선택할 수 있도록 해준다. UIControl을 상속받음.
    UIDatePicker *testPicker = [[UIDatePicker alloc] init];
    testPicker.datePickerMode = UIDatePickerModeDate;

    self.testPicker = testPicker;
    
    
    UITextView *testView = [[UITextView alloc] init];
    
    testView.frame = CGRectMake(50, 200, 200, 50);
    [self.view addSubview:testView];
    
    //UITextView에 UIDatePiker를 넣는다.
    [testView setInputView:testPicker];
    testView.layer.borderWidth = 1;
    testView.layer.borderColor = [UIColor blackColor].CGColor;
    testView.editable = NO;
    self.testView = testView;
    
    //UIDatePiker위에 view를 하나 더 얹기 위해 View를 만든다.
    CGFloat m = self.view.frame.size.width;
    CGFloat h = self.view.frame.size.height;
    UIView *toolbar = [[UIView alloc] init];
    toolbar.frame = CGRectMake(0, h+30, m, 30);
    toolbar.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:toolbar];
    self.toolbar =toolbar;
    
    //done버튼을 눌렀을 때 내려가게 하기 위한 버튼
    UIButton *doneBtn  = [UIButton buttonWithType:UIButtonTypeCustom];
    doneBtn.frame = CGRectMake(toolbar.frame.size.width - 50, 0, 50, 30);
    [doneBtn setTitle:@"Done" forState:UIControlStateNormal];
    [doneBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [toolbar addSubview:doneBtn];
    [doneBtn addTarget:self action:@selector(testViewTextChange:) forControlEvents:UIControlEventTouchUpInside];
    
    
    //NSNotificationCenter를 통해 기본 노티를 사용하는 방법. 버튼과 비슷하게 selector를 사용한다.
    [NSNotificationCenter.defaultCenter addObserver:self selector:@selector(pickerNoit:) name:UIKeyboardWillShowNotification object:nil ];
    [NSNotificationCenter.defaultCenter addObserver:self selector:@selector(pickerResignNoti:) name:UIKeyboardWillHideNotification object:nil];
    
}

//self.testPicker.date에서 선택한 Date를 TextView에 올리는 메소드
- (void)testViewTextChange:(UIButton *)sender{
    NSLog(@"hahaha");
    self.testView.text = [NSDateFormatter localizedStringFromDate:self.testPicker.date dateStyle:NSDateFormatterShortStyle timeStyle:NSDateFormatterShortStyle];
    [self.testView resignFirstResponder];
    
}

//해당하는 노티가 왔을 때 동작. UIDatePiker는 자판의 크기와 동일하다.
- (void)pickerNoit:(NSNotification *)noti{
    
    CGSize pickersize = [[noti.userInfo objectForKey:UIKeyboardFrameEndUserInfoKey] CGRectValue].size;
    CGRect originFrame = self.toolbar.frame;
    
    [UIView animateWithDuration:5 animations:^{
        self.toolbar.frame = CGRectMake(originFrame.origin.x, self.view.frame.size.height- pickersize.height -30 ,originFrame.size.width, originFrame.size.height);
    }];

    
}

//해당 노티가 왔을 때 동작. UIDatePiker가 Hide되면 toolbar(view)가 같이 내려간다.
- (void)pickerResignNoti:(NSNotification *)noti{
    
    self.toolbar.frame = CGRectMake(0, -30,self.view.frame.size.width, 30);
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
