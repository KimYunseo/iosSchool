//
//  ViewController.m
//  IDPasswordPractice01
//
//  Created by abyssinaong on 2017. 2. 7..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UIScrollViewDelegate, UITextFieldDelegate>
@property UIScrollView *mainScroll;
@property UITextField *loginTextView;
@property UITextField * passTextView;
@property UIPageControl *pageCtrol;
@property CGPoint pageSet;
@property NSString *loginID;
@property NSString *loginPassword;
@property UILabel *loginLB;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.loginID =@"hohoba";
    self.loginPassword = @"1234";
    CGFloat msXNum = self.view.frame.size.width;
    CGFloat msYNum = self.view.frame.size.height;
    
    
    self.pageSet = CGPointMake( msXNum, 0);
    
    self.mainScroll = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, msXNum, msYNum)];
    [self.mainScroll setContentSize:CGSizeMake(msXNum*2, msYNum)];
    [self.view addSubview:self.mainScroll];
    self.mainScroll.delegate = self;
    self.mainScroll.scrollEnabled =YES;
    
    self.mainScroll.pagingEnabled = YES;
    
    
    UIView *logInMainView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, msXNum, msYNum)];
    [self.mainScroll addSubview:logInMainView];
    
    UILabel *titleLB = [[UILabel alloc] initWithFrame:CGRectMake(msXNum/5, msYNum*5/15, msXNum*3/5, msYNum/15)];
    [titleLB setText:@"MY Login Page"];
    titleLB.textAlignment = NSTextAlignmentCenter;
    [logInMainView addSubview:titleLB];
    
    self.loginTextView = [[UITextField alloc] initWithFrame:CGRectMake(msXNum/5+5, msYNum*6/15, msXNum*3/5-5, msYNum/15)];
    self.loginTextView.borderStyle = UITextBorderStyleRoundedRect;
    self.loginTextView.delegate = self;
    self.loginTextView.tag = 10;
    [logInMainView addSubview:self.loginTextView];
    
    self.passTextView = [[UITextField alloc] initWithFrame:CGRectMake(msXNum/5+5, msYNum*7/15+5, msXNum*3/5-5, msYNum/15)];
    self.passTextView.borderStyle = UITextBorderStyleRoundedRect;
    self.passTextView.tag =20;
    self.passTextView.delegate =self;
    [logInMainView addSubview:self.passTextView];
    
    UILabel *iDText = [[UILabel alloc] initWithFrame:CGRectMake(0, msYNum*6/15, msXNum/5, msYNum/15)];
    iDText.text= @"ID";
    iDText.textAlignment = NSTextAlignmentRight;
//    IDText.layer.borderWidth = 1;
    [logInMainView addSubview:iDText];
    
    UILabel *passText = [[UILabel alloc] initWithFrame:CGRectMake(0, msYNum*7/15+5, msXNum/5, msYNum/15)];
    passText.text= @"PW";
    passText.textAlignment = NSTextAlignmentRight;
    [logInMainView addSubview:passText];
    
    UIButton *loginBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    loginBtn.frame = CGRectMake(msXNum/5, msYNum*8/15+10, msXNum/5, msYNum/15);
    loginBtn.backgroundColor = [UIColor colorWithRed:1/255.0 green:75/255.0 blue:133/255.0 alpha:1];
//    loginBtn.layer.borderWidth =1;
    [loginBtn setTitle:@"LOGIN" forState:UIControlStateNormal];
    [loginBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    loginBtn.layer.cornerRadius =10.0;
    [logInMainView addSubview:loginBtn];
    [loginBtn addTarget:self action:@selector(loginAction:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *joinBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    joinBtn.frame = CGRectMake(msXNum*3/5+5, msYNum*8/15+10, msXNum/5, msYNum/15);
    joinBtn.backgroundColor = [UIColor colorWithRed:1/255.0 green:75/255.0 blue:133/255.0 alpha:1];
    [joinBtn setTitle:@"JOIN IN" forState:UIControlStateNormal];
    [joinBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    joinBtn.layer.cornerRadius =10.0;
    [logInMainView addSubview:joinBtn];

    
    self.pageCtrol = [[UIPageControl alloc] init];
    self.pageCtrol.frame = CGRectMake(msXNum*2/5, msYNum*14/15, msXNum/5, 20);
    self.pageCtrol.backgroundColor =[UIColor colorWithRed:1/255.0 green:75/255.0 blue:133/255.0 alpha:1];
    self.pageCtrol.numberOfPages = 2;
//    self.pageCtrol.currentPage = 0;
    [self.pageCtrol addTarget:self action:@selector(clickAction:) forControlEvents:UIControlEventValueChanged];
//    pageCtrol.hidesForSinglePage =YES;
//
//    pageCtrol.defersCurrentPageDisplay = YES;
    [self.view addSubview:self.pageCtrol ];
//    [self.pageCtrol updateCurrentPageDisplay];
    

    UISwitch *testSwitch = [[UISwitch alloc]initWithFrame:CGRectMake(msXNum*2/5, msYNum*13/15, msXNum/5, 50)];
//    testSwitch.backgroundColor = [UIColor colorWithRed:1/255.0 green:75/255.0 blue:133/255.0 alpha:1];
    [self.view addSubview:testSwitch];
    
    
    
    NSMutableArray *testArray = [[NSMutableArray alloc] init];
    [testArray addObject:@"1"];
    [testArray addObject:@"2"];
    
    UISegmentedControl *segmentTest = [[UISegmentedControl alloc]initWithItems:testArray];
    segmentTest.backgroundColor = [UIColor colorWithRed:1/255.0 green:75/255.0 blue:133/255.0 alpha:1];
    segmentTest.frame = CGRectMake(0, msYNum*11/15, msXNum, 50);
    [self.view addSubview:segmentTest];
    
    
    UIView *mainView02 = [[UIView alloc] initWithFrame:CGRectMake(self.pageSet.x, 0, msXNum, msYNum)];
    [self.mainScroll addSubview:mainView02];
    
    self.loginLB =[[UILabel alloc] initWithFrame:CGRectMake(50, 50, 150, 70)];
    [self.loginLB setTextColor:[UIColor blackColor]];
    [mainView02 addSubview:self.loginLB];
    
    
    //
}
//contentOffset


- (void)clickAction:(UIPageControl *)sender
{
    NSLog(@"눌렸다.");
    NSLog(@"%lf", self.mainScroll.contentOffset.x);
    if(self.mainScroll.contentOffset.x <=  50){
        [self.mainScroll setContentOffset:CGPointMake(self.pageSet.x, 0) animated:YES];
        self.pageCtrol.currentPage =1;
        NSLog(@"로그 들어 온다3333333.");
    } else if(self.mainScroll.contentOffset.x >= (CGFloat)300 ){
        [self.mainScroll setContentOffset:CGPointMake(0, 0) animated:YES];
        //self.pageCtrol.currentPage =0;
        
        NSLog(@"로그 들어 온다.");


    } else {
        
        NSLog(@"먼가 잘못 됐다.");
    }
    
}


- (void)scrollViewDidScroll:(UIScrollView *)scrollVie{
//    self.pageSet =CGPointMake(300, 0);
    if(self.mainScroll.contentOffset.x >=  self.pageSet.x -50){
        self.pageCtrol.currentPage = 1;

    } else if(self.mainScroll.contentOffset.x <=  100) {
        
        self.pageCtrol.currentPage = 0;

    }
}



- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    CGPoint xyNum = CGPointMake(0, 50);
    [self.mainScroll setContentOffset:xyNum animated:YES];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    if(textField.tag ==10){
        
        [self.passTextView becomeFirstResponder];
        self.loginTextView.text = textField.text;
        
    } else if(textField.tag == 20){
        [self.passTextView resignFirstResponder];
         [self.mainScroll setContentOffset:CGPointMake(0, 0) animated:YES];
        self.passTextView.text = textField.text;
        if([self.passTextView.text isEqualToString:self.loginPassword] && [self.loginTextView.text isEqualToString:self.loginID]){
            NSLog(@"로그인 성공");
            self.mainScroll.contentOffset = CGPointMake(self.pageSet.x, 0);
            [self.loginLB setText:@"로그인에 성공하였습니다."];
        } else {
            self.mainScroll.contentOffset = CGPointMake(self.pageSet.x, 0);

            NSLog(@"로그인 실패");
            [self.loginLB setText:@"로그인에 실패하였습니다."];
        }
        
        
    } else {
        
        NSLog(@"뭔가 잘못됐다 ㅠㅠ");
    }
    return YES;
}

- (void)loginAction:(UIButton *)sender
{
    
    if([self.passTextView.text isEqualToString:self.loginPassword] && [self.loginTextView.text isEqualToString:self.loginID]){
        NSLog(@"로그인 성공");
        self.mainScroll.contentOffset = CGPointMake(self.pageSet.x, 0);
        [self.loginLB setText:@"로그인에 성공하였습니다."];
    } else {
        self.mainScroll.contentOffset = CGPointMake(self.pageSet.x, 0);
        
        NSLog(@"로그인 실패");
        [self.loginLB setText:@"로그인에 실패하였습니다."];
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
