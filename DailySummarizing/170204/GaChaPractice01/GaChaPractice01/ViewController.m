//
//  ViewController.m
//  GaChaPractice01
//
//  Created by abyssinaong on 2017. 2. 5..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, retain) UIImageView *charcFront01;
@property (nonatomic, retain) UIImageView *charcFront02;
@property (nonatomic, retain) UIImageView *charcFront03;
@property (nonatomic, retain) UIImageView *charcFront04;
@property (nonatomic, retain) UIView *centerView05;

@property (nonatomic, retain) UIButton *charBtn01;
@property (nonatomic, retain) UIButton *charBtn02;
@property (nonatomic, retain) UIButton *charBtn03;
@property (nonatomic, retain) UIButton *charBtn04;


@property (nonatomic, retain) UIView *ch01ViewMain;
@property (nonatomic, retain) UIImageView *ch01Img;
@property (nonatomic, retain) UIButton *ch01Exp;
@property (nonatomic, retain) UILabel *ch01ExpLB;
@property (nonatomic, retain) UIButton *ch01HP;
@property (nonatomic, retain) UILabel *ch01HPLB;
@property (nonatomic, retain) UIButton *ch01Atk;
@property (nonatomic, retain) UILabel *ch01AtkLB;
@property (nonatomic, retain) UIButton *ch01Df;
@property (nonatomic, retain) UILabel *ch01DfLB;
@property (nonatomic, retain) UIButton *ch01Agil;
@property (nonatomic, retain) UILabel *ch01AgilLB;
@property (nonatomic, retain) UIButton *ch01Exit;

@property (nonatomic, retain) UIView *ch02ViewMain;
@property (nonatomic, retain) UIImageView *ch02Img;
@property (nonatomic, retain) UIButton *ch02Exp;
@property (nonatomic, retain) UILabel *ch02ExpLB;
@property (nonatomic, retain) UIButton *ch02HP;
@property (nonatomic, retain) UILabel *ch02HPLB;
@property (nonatomic, retain) UIButton *ch02Atk;
@property (nonatomic, retain) UILabel *ch02AtkLB;
@property (nonatomic, retain) UIButton *ch02Df;
@property (nonatomic, retain) UILabel *ch02DfLB;
@property (nonatomic, retain) UIButton *ch02Agil;
@property (nonatomic, retain) UILabel *ch02AgilLB;

@property (nonatomic, retain) UIView *ch03ViewMain;
@property (nonatomic, retain) UIImageView *ch03Img;
@property (nonatomic, retain) UIButton *ch03Exp;
@property (nonatomic, retain) UILabel *ch03ExpLB;
@property (nonatomic, retain) UIButton *ch03HP;
@property (nonatomic, retain) UILabel *ch03HPLB;
@property (nonatomic, retain) UIButton *ch03Atk;
@property (nonatomic, retain) UILabel *ch03AtkLB;
@property (nonatomic, retain) UIButton *ch03Df;
@property (nonatomic, retain) UILabel *ch03DfLB;
@property (nonatomic, retain) UIButton *ch03Agil;
@property (nonatomic, retain) UILabel *ch03AgilLB;

@property (nonatomic, retain) UIView *ch04ViewMain;
@property (nonatomic, retain) UIImageView *ch04Img;
@property (nonatomic, retain) UIButton *ch04Exp;
@property (nonatomic, retain) UILabel *ch04ExpLB;
@property (nonatomic, retain) UIButton *ch04HP;
@property (nonatomic, retain) UILabel *ch04HPLB;
@property (nonatomic, retain) UIButton *ch04Atk;
@property (nonatomic, retain) UILabel *ch04AtkLB;
@property (nonatomic, retain) UIButton *ch04Df;
@property (nonatomic, retain) UILabel *ch04DfLB;
@property (nonatomic, retain) UIButton *ch04Agil;
@property (nonatomic, retain) UILabel *ch04AgilLB;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //x y좌표 넣기;
    
//    CGFloat xNum;
//    CGFloat yNum;
    
    CGFloat withSelfView = self.view.frame.size.width;
    CGFloat heightSelfView = self.view.frame.size.height;
    
    //UIView Frame 모음
    CGRect mainFarme = CGRectMake(0, 0, withSelfView, heightSelfView);
    CGRect topFrame = CGRectMake(0, 0, withSelfView, 80);
    CGRect downFrame = CGRectMake(0, heightSelfView-80, withSelfView, 80);
    
    //UIImageView Frame 모음
    CGRect charc01Frame = CGRectMake(40, 120, (withSelfView-120)/2, (heightSelfView -280)/2);
    CGRect charc02Frame = CGRectMake(withSelfView/2+20, 120, (withSelfView-120)/2, (heightSelfView -280)/2);
    CGRect charc03Frame = CGRectMake(40, heightSelfView/2 + 20, (withSelfView-120)/2, (heightSelfView -280)/2);
    CGRect charc04Frame = CGRectMake(withSelfView/2+20, heightSelfView/2 + 20, (withSelfView-120)/2, (heightSelfView -280)/2);
    
    
    //UIButton Frame 모음
    CGRect cPFrame = CGRectMake(40, 10 , 60, 60);
    CGRect cMFrame = CGRectMake(120, 10 , (withSelfView -120)/2 -30, 60);
    
    
    
//UIView 메인 3개
    //UIView main

    UIView *mainView = [[UIView alloc] initWithFrame:mainFarme];
    mainView.backgroundColor = [UIColor grayColor];
    
    //topView 검은색 바탕, mainView의 sub로 들어감
    
    UIView *topView = [[UIView alloc] initWithFrame:topFrame];
    topView.backgroundColor = [UIColor blackColor];
    
    //downView 검은색 바탕, mainView의 sub로 들어감
    
    UIView *downView = [[UIView alloc] initWithFrame:downFrame];
    downView.backgroundColor = [UIColor blackColor];
    
//topView에 올라가는 돈 , 포인트 뷰
    
    //돈 뷰
    UIView *moneyView = [[UIView alloc] initWithFrame:CGRectMake(40, 45, withSelfView/6-40, 30)];
    moneyView.backgroundColor = [UIColor whiteColor];
    
    //포인트 뷰
    UIView *pointView = [[UIView alloc] initWithFrame:CGRectMake(withSelfView/2+40, 45, withSelfView/6-40, 30)];
    pointView.backgroundColor = [UIColor whiteColor];

//UIImageView 4개 필요
    //charc01
    
    UIImageView *charc01 = [[UIImageView alloc] initWithFrame:charc01Frame];
    charc01.image = [UIImage imageNamed:@"캐릭터 명을 넣으시오"];
    [charc01.layer setCornerRadius:20.0]; // setCornerRadius  더 찾아 보기!
    charc01.userInteractionEnabled = YES;
    
    //charc02
    
    UIImageView *charc02 = [[UIImageView alloc] initWithFrame:charc02Frame];
    charc02.image = [UIImage imageNamed:@"캐릭터 명을 넣으시오"];
    [charc02.layer setCornerRadius:20.0];
    charc02.userInteractionEnabled = YES;

    
    //charc03
    
    UIImageView *charc03 = [[UIImageView alloc] initWithFrame:charc03Frame];
    charc03.image = [UIImage imageNamed:@"캐릭터 명을 넣으시오"];
    [charc03.layer setCornerRadius:20.0];
    charc03.userInteractionEnabled = YES;

    
    //charc04
    
    UIImageView *charc04 = [[UIImageView alloc] initWithFrame:charc04Frame];
    charc04.image = [UIImage imageNamed:@"캐릭터 명을 넣으시오"];
    [charc04.layer setCornerRadius:20.0];
    charc04.userInteractionEnabled = YES;

    
//UIButton 9개
    //point 충전
    UIButton *chargePoint = [UIButton buttonWithType:UIButtonTypeCustom];
    chargePoint.frame = cPFrame;
    chargePoint.backgroundColor = [UIColor whiteColor];
    
    //돈 충전
    UIButton *chargeMoney = [UIButton buttonWithType:UIButtonTypeCustom];
    chargeMoney.frame = cMFrame;
    chargeMoney.backgroundColor = [UIColor whiteColor];
    
    //케릭사진 눌렀을 때 새로운 뷰 뜨게 하기 위한 버튼
    //1번 케릭용 버튼
    self.charBtn01 = [UIButton buttonWithType:UIButtonTypeCustom];
        //버튼 프레임 설정용!!
    CGRect charBtnFrame = CGRectMake(0, 0, charc04.frame.size.width, charc04.frame.size.height);
    self.charBtn01.frame = charBtnFrame;
    [self.charBtn01 addTarget:self action:@selector(ch01NewView:) forControlEvents:UIControlEventTouchUpInside];
    
    
    //2번 케릭용 버튼
    self.charBtn02 = [UIButton buttonWithType:UIButtonTypeCustom];
    self.charBtn02.frame = charBtnFrame;
    [self.charBtn02 addTarget:self action:@selector(ch02NewView:) forControlEvents:UIControlEventTouchUpInside];
    
    //3번 케릭용 버튼
    self.charBtn03 = [UIButton buttonWithType:UIButtonTypeCustom];
    self.charBtn03.frame = charBtnFrame;
    [self.charBtn03 addTarget:self action:@selector(ch03NewView:) forControlEvents:UIControlEventTouchUpInside];
    
    //4번 케릭용 버튼
    self.charBtn04 = [UIButton buttonWithType:UIButtonTypeCustom];
    self.charBtn04.frame = charBtnFrame;
    [self.charBtn04 addTarget:self action:@selector(ch04NewView:) forControlEvents:UIControlEventTouchUpInside];
    
    
    
//새로운 뷰를 올리기 위한 버튼 위에 올리는 가림막용 뷰
    //1번 케릭용 가림막 뷰
    self.charcFront01 = [[UIImageView alloc] init];
    self.charcFront01.frame = charBtnFrame;
    self.charcFront01.image = [UIImage imageNamed:@"cardBack.png"];
    [self.charcFront01.layer setCornerRadius:20.0];
    self.charcFront01.userInteractionEnabled = YES;
    
    //2번 케릭용 가림막 뷰
    self.charcFront02 = [[UIImageView alloc] init];
    self.charcFront02.frame = charBtnFrame;
    self.charcFront02.image = [UIImage imageNamed:@"cardBack.png"];
    [self.charcFront02.layer setCornerRadius:20.0];
    self.charcFront02.userInteractionEnabled = YES;
    
    //3번 케릭용 가림막 뷰
    self.charcFront03 = [[UIImageView alloc] init];
    self.charcFront03.frame = charBtnFrame;
    self.charcFront03.image = [UIImage imageNamed:@"cardBack.png"];
    [self.charcFront03.layer setCornerRadius:20.0];
    self.charcFront03.userInteractionEnabled = YES;
    
    //4번 케릭용 가림막 뷰
    self.charcFront04 = [[UIImageView alloc] init];
    self.charcFront04.frame = charBtnFrame;
    self.charcFront04.image = [UIImage imageNamed:@"cardBack.png"];
    [self.charcFront04.layer setCornerRadius:20.0];
    self.charcFront04.userInteractionEnabled = YES;
    
//가림막 위에 버튼
    //1번 가림막용 버튼
    UIButton *charcFBtn01 = [UIButton buttonWithType:UIButtonTypeCustom];
    charcFBtn01.frame = charBtnFrame;
    [charcFBtn01 addTarget:self action:@selector(charcFBtn01Remove:) forControlEvents:UIControlEventTouchUpInside];
    
    //2번 가림막용 버튼
    UIButton *charcFBtn02 = [UIButton buttonWithType:UIButtonTypeCustom];
    charcFBtn02.frame = charBtnFrame;
    [charcFBtn02 addTarget:self action:@selector(charcFBtn02Remove:) forControlEvents:UIControlEventTouchUpInside];
    
    //3번 가림막용 버튼
    UIButton *charcFBtn03 = [UIButton buttonWithType:UIButtonTypeCustom];
    charcFBtn03.frame = charBtnFrame;
    [charcFBtn03 addTarget:self action:@selector(charcFBtn03Remove:) forControlEvents:UIControlEventTouchUpInside];
    
    //4번 가림막용 버튼
    UIButton *charcFBtn04 = [UIButton buttonWithType:UIButtonTypeCustom];
    charcFBtn04.frame = charBtnFrame;
    [charcFBtn04 addTarget:self action:@selector(charcFBtn04Remove:) forControlEvents:UIControlEventTouchUpInside];
    
    
//sub 연결 공간
//기본 View 공간
    //super : self.view,    sub : mainView
    [self.view addSubview:mainView];
    
    
    //super : mainView,     sub : topView
    [mainView addSubview:topView];
    //super : topView,     sub : topView            머니 뷰
    [topView addSubview:moneyView];
    //super : topView,     sub : pointView          포인트 뷰
    [topView addSubview:pointView];
    
    
    //super : mainView,     sub : downView
    [mainView addSubview:downView];
    //super : downView,     sub : chargePoint       포인트 충전 버튼
    [downView addSubview:chargePoint];
    //super : downView,     sub : chargeMoney       돈 충전 버튼
    [downView addSubview:chargeMoney];
    
    
//케릭 UIImvageView와 버튼 조합
    //super : mainView,     sub : charc01
    [mainView addSubview:charc01];
    //super : charc01,     sub : charBtn01          새로운 뷰 버튼
    [charc01 addSubview:self.charBtn01];
    //super : charBtn01,     sub : charcFront01     가림막 뷰
    [self.charBtn01 addSubview:self.charcFront01];
    //super : charcFront01,     sub : charcFront01  가림막위 버튼
    [self.charcFront01 addSubview:charcFBtn01];
    
    //super : mainView,     sub : charc02
    [mainView addSubview:charc02];
    //super : charc01,     sub : charBtn01          새로운 뷰 버튼
    [charc02 addSubview:self.charBtn02];
    //super : charBtn02,     sub : charcFront02     가림막 뷰
    [self.charBtn02 addSubview:self.charcFront02];
    //super : charcFront02,     sub : charcFront02  가림막위 버튼
    [self.charcFront02 addSubview:charcFBtn02];
    
    
    //super : mainView,     sub : charc03
    [mainView addSubview:charc03];
    //super : charc01,     sub : charBtn01          새로운 뷰 버튼
    [charc03 addSubview:self.charBtn03];
    //super : charBtn03,     sub : charcFront03     가림막 뷰
    [self.charBtn03 addSubview:self.charcFront03];
    //super : charcFront03,     sub : charcFront03  가림막위 버튼
    [self.charcFront03 addSubview:charcFBtn03];
    
    //super : mainView,     sub : charc03
    [mainView addSubview:charc04];
    //super : charc01,     sub : charBtn01          새로운 뷰 버튼
    [charc04 addSubview:self.charBtn04];
    //super : charBtn04,     sub : charcFront04     가림막 뷰
    [self.charBtn04 addSubview:self.charcFront04];
    //super : charcFront04,     sub : charcFront04  가림막위 버튼
    [self.charcFront04 addSubview:charcFBtn04];

    
    UIView *centerView01 = [[UIView alloc] initWithFrame:CGRectMake(withSelfView/2, heightSelfView/2, 10, 10)];
    centerView01.backgroundColor = [UIColor grayColor];
    
    UIView *centerView02 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, centerView01.frame.size.width, centerView01.frame.size.height)];
    centerView02.backgroundColor = [UIColor grayColor];
    
    UIView *centerView03 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, centerView01.frame.size.width, centerView01.frame.size.height)];
    centerView03.backgroundColor = [UIColor grayColor];
    
    UIView *centerView04 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, centerView01.frame.size.width, centerView01.frame.size.height)];
    centerView04.backgroundColor = [UIColor grayColor];
    
    self.centerView05 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, centerView01.frame.size.width, centerView01.frame.size.height)];
    self.centerView05.backgroundColor = [UIColor grayColor];
    
    
    [mainView addSubview:centerView01];
    [centerView01 addSubview:centerView02];
    [centerView02 addSubview:centerView03];
    [centerView03 addSubview:centerView04];
    [centerView04 addSubview:self.centerView05];
    
    self.view.userInteractionEnabled = YES;
    
    
//캐릭별 새로운 뷰
    //케릭1 메인뷰
    
    self.ch01ViewMain = [[UIView alloc] initWithFrame:CGRectMake(-withSelfView/2, -heightSelfView/2+80, withSelfView, heightSelfView-160)];
    self.ch01ViewMain.backgroundColor = [UIColor grayColor];

    
    self.ch01Img = [[UIImageView alloc]initWithFrame:CGRectMake(20, 45, 150, 320)];
    self.ch01Img.image = [UIImage imageNamed:@"cardBack.png"];
    self.ch01Img.userInteractionEnabled = YES;
    
    CGFloat yNum = 25.0;
    self.ch01Exp = [UIButton buttonWithType:UIButtonTypeCustom];
    self.ch01Exp.frame = CGRectMake(withSelfView/2 + 20, yNum, withSelfView/6, (self.ch01ViewMain.frame.size.height-70)/5);
    self.ch01Exp.backgroundColor = [UIColor yellowColor];
    [self.ch01Exp setTitle:@"하하" forState:UIControlStateNormal];
    [self.ch01Exp setTitle:@"dma" forState:UIControlStateHighlighted];
    
    self.ch01ExpLB = [[UILabel alloc]initWithFrame:CGRectMake(withSelfView/2+withSelfView/3, yNum,withSelfView/2+ withSelfView/6-25, (self.ch01ViewMain.frame.size.height-70)/5)];
    self.ch01ExpLB.text = @"경험치";
    
    yNum = yNum +(self.ch01ViewMain.frame.size.height-70)/5 +5;
    self.ch01HP = [UIButton buttonWithType:UIButtonTypeCustom];
    self.ch01HP.frame = CGRectMake(withSelfView/2 + 20, yNum, withSelfView/2+withSelfView/6-25, (self.ch01ViewMain.frame.size.height-70)/5);
    self.ch01HPLB = [[UILabel alloc]initWithFrame:CGRectMake(withSelfView/2+withSelfView/3, yNum, withSelfView/2+withSelfView/6-25, (self.ch01ViewMain.frame.size.height-70)/5)];
    self.ch01HPLB.text = @"피통";
    
    
    yNum = yNum +(self.ch01ViewMain.frame.size.height-70)/5 +5;
    self.ch01Atk = [UIButton buttonWithType:UIButtonTypeCustom];
    self.ch01Atk.frame = CGRectMake(withSelfView/2 + 20, yNum, withSelfView/2+withSelfView/6-25, (self.ch01ViewMain.frame.size.height-70)/5);
    self.ch01AtkLB = [[UILabel alloc]initWithFrame:CGRectMake(withSelfView/2+withSelfView/3, yNum, withSelfView/2+withSelfView/6-25, (self.ch01ViewMain.frame.size.height-70)/5)];
    self.ch01AtkLB.text = @"공격력";
    
    yNum = yNum +(self.ch01ViewMain.frame.size.height-70)/5 +5;
    self.ch01Df = [UIButton buttonWithType:UIButtonTypeCustom];
    self.ch01Df.frame = CGRectMake(withSelfView/2 + 20, yNum, withSelfView/2+withSelfView/6-25, (self.ch01ViewMain.frame.size.height-70)/5);
    self.ch01DfLB = [[UILabel alloc]initWithFrame:CGRectMake(withSelfView/2+withSelfView/3, yNum, withSelfView/2+withSelfView/6-25, (self.ch01ViewMain.frame.size.height-70)/5)];
    self.ch01DfLB.text = @"방어력";
    
    yNum = yNum +(self.ch01ViewMain.frame.size.height-70)/5 +5;
    self.ch01Agil = [UIButton buttonWithType:UIButtonTypeCustom];
    self.ch01Agil.frame = CGRectMake(withSelfView/2 + 20, yNum, withSelfView/2+withSelfView/6-25, (self.ch01ViewMain.frame.size.height-70)/5);
    self.ch01AgilLB = [[UILabel alloc]initWithFrame:CGRectMake(withSelfView/2+withSelfView/3, yNum, withSelfView/2+withSelfView/6-25, (self.ch01ViewMain.frame.size.height-70)/5)];
    self.ch01AgilLB.text = @"민첩";
    
    self.ch01Exit = [UIButton buttonWithType:UIButtonTypeCustom];
    self.ch01Exit.frame = CGRectMake(40, self.ch01ViewMain.frame.size.height-100, 80, 80);
//    ch01Exit.backgroundColor = [UIColor blueColor];
    self.ch01Exit.userInteractionEnabled =YES;
    [self.ch01Exit setTitle:@"X" forState:UIControlStateNormal];
    [self.ch01Exit setTitle:@"" forState:UIControlStateHighlighted];
   
    [self.ch01Exit addTarget:self action:@selector(ch01ExitAndRemove:) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    
    //케릭2 메인뷰
    
    self.ch02ViewMain = [[UIView alloc] initWithFrame:CGRectMake(-40-withSelfView/2+20, -(heightSelfView/2 - 60), withSelfView, heightSelfView-160)];
    self.ch02ViewMain.backgroundColor = [UIColor grayColor];
    
    self.ch02Img = [[UIImageView alloc]initWithFrame:CGRectMake(20, 45, 150, 320)];
    self.ch02Img.image = [UIImage imageNamed:@"cardBack.png"];
    
    yNum = 25.0;
    self.ch02Exp = [UIButton buttonWithType:UIButtonTypeCustom];
    self.ch02Exp.frame = CGRectMake(withSelfView/2 + 20, yNum, withSelfView/2+withSelfView/6-25, (self.ch01ViewMain.frame.size.height-70)/5);
    self.ch02ExpLB = [[UILabel alloc]initWithFrame:CGRectMake(withSelfView/2+withSelfView/3, yNum,withSelfView/2+ withSelfView/6-25, (self.ch01ViewMain.frame.size.height-70)/5)];
    self.ch02ExpLB.text = @"경험치";
    
    yNum = yNum +(self.ch01ViewMain.frame.size.height-70)/5 +5;
    self.ch02HP = [UIButton buttonWithType:UIButtonTypeCustom];
    self.ch02HP.frame = CGRectMake(withSelfView/2 + 20, yNum, withSelfView/2+withSelfView/6-25, (self.ch01ViewMain.frame.size.height-70)/5);
    self.ch02HPLB = [[UILabel alloc]initWithFrame:CGRectMake(withSelfView/2+withSelfView/3, yNum, withSelfView/2+withSelfView/6-25, (self.ch01ViewMain.frame.size.height-70)/5)];
    self.ch02HPLB.text = @"피통";
    
    
    yNum = yNum +(self.ch01ViewMain.frame.size.height-70)/5 +5;
    self.ch02Atk = [UIButton buttonWithType:UIButtonTypeCustom];
    self.ch02Atk.frame = CGRectMake(withSelfView/2 + 20, yNum, withSelfView/2+withSelfView/6-25, (self.ch01ViewMain.frame.size.height-70)/5);
    self.ch02AtkLB = [[UILabel alloc]initWithFrame:CGRectMake(withSelfView/2+withSelfView/3, yNum, withSelfView/2+withSelfView/6-25, (self.ch01ViewMain.frame.size.height-70)/5)];
    self.ch02AtkLB.text = @"공격력";
    
    yNum = yNum +(self.ch01ViewMain.frame.size.height-70)/5 +5;
    self.ch02Df = [UIButton buttonWithType:UIButtonTypeCustom];
    self.ch02Df.frame = CGRectMake(withSelfView/2 + 20, yNum, withSelfView/2+withSelfView/6-25, (self.ch01ViewMain.frame.size.height-70)/5);
    self.ch02DfLB = [[UILabel alloc]initWithFrame:CGRectMake(withSelfView/2+withSelfView/3, yNum, withSelfView/2+withSelfView/6-25, (self.ch01ViewMain.frame.size.height-70)/5)];
    self.ch02DfLB.text = @"방어력";
    
    yNum = yNum +(self.ch01ViewMain.frame.size.height-70)/5 +5;
    self.ch02Agil = [UIButton buttonWithType:UIButtonTypeCustom];
    self.ch02Agil.frame = CGRectMake(withSelfView/2 + 20, yNum, withSelfView/2+withSelfView/6-25, (self.ch01ViewMain.frame.size.height-70)/5);
    self.ch02AgilLB = [[UILabel alloc]initWithFrame:CGRectMake(withSelfView/2+withSelfView/3, yNum, withSelfView/2+withSelfView/6-25, (self.ch01ViewMain.frame.size.height-70)/5)];
    self.ch02AgilLB.text = @"민첩";
    
    
    
    //케릭3 메인뷰
    
    self.ch03ViewMain = [[UIView alloc] initWithFrame:CGRectMake(-40-withSelfView/2+20, -(heightSelfView/2 - 60), withSelfView, heightSelfView-160)];
    self.ch03ViewMain.backgroundColor = [UIColor grayColor];
    
    self.ch03Img = [[UIImageView alloc]initWithFrame:CGRectMake(20, 45, 150, 320)];
    self.ch03Img.image = [UIImage imageNamed:@"cardBack.png"];
    
    yNum = 25.0;
    self.ch03Exp = [UIButton buttonWithType:UIButtonTypeCustom];
    self.ch03Exp.frame = CGRectMake(withSelfView/2 + 20, yNum, withSelfView/2+withSelfView/6-25, (self.ch01ViewMain.frame.size.height-70)/5);
    self.ch03ExpLB = [[UILabel alloc]initWithFrame:CGRectMake(withSelfView/2+withSelfView/3, yNum,withSelfView/2+ withSelfView/6-25, (self.ch01ViewMain.frame.size.height-70)/5)];
    self.ch03ExpLB.text = @"경험치";
    
    yNum = yNum +(self.ch01ViewMain.frame.size.height-70)/5 +5;
    self.ch03HP = [UIButton buttonWithType:UIButtonTypeCustom];
    self.ch03HP.frame = CGRectMake(withSelfView/2 + 20, yNum, withSelfView/2+withSelfView/6-25, (self.ch01ViewMain.frame.size.height-70)/5);
    self.ch03HPLB = [[UILabel alloc]initWithFrame:CGRectMake(withSelfView/2+withSelfView/3, yNum, withSelfView/2+withSelfView/6-25, (self.ch01ViewMain.frame.size.height-70)/5)];
    self.ch03HPLB.text = @"피통";
    
    
    yNum = yNum +(self.ch01ViewMain.frame.size.height-70)/5 +5;
    self.ch03Atk = [UIButton buttonWithType:UIButtonTypeCustom];
    self.ch03Atk.frame = CGRectMake(withSelfView/2 + 20, yNum, withSelfView/2+withSelfView/6-25, (self.ch01ViewMain.frame.size.height-70)/5);
    self.ch03AtkLB = [[UILabel alloc]initWithFrame:CGRectMake(withSelfView/2+withSelfView/3, yNum, withSelfView/2+withSelfView/6-25, (self.ch01ViewMain.frame.size.height-70)/5)];
    self.ch03AtkLB.text = @"공격력";
    
    yNum = yNum +(self.ch01ViewMain.frame.size.height-70)/5 +5;
    self.ch03Df = [UIButton buttonWithType:UIButtonTypeCustom];
    self.ch03Df.frame = CGRectMake(withSelfView/2 + 20, yNum, withSelfView/2+withSelfView/6-25, (self.ch01ViewMain.frame.size.height-70)/5);
    self.ch03DfLB = [[UILabel alloc]initWithFrame:CGRectMake(withSelfView/2+withSelfView/3, yNum, withSelfView/2+withSelfView/6-25, (self.ch01ViewMain.frame.size.height-70)/5)];
    self.ch03DfLB.text = @"방어력";
    
    yNum = yNum +(self.ch01ViewMain.frame.size.height-70)/5 +5;
    self.ch03Agil = [UIButton buttonWithType:UIButtonTypeCustom];
    self.ch03Agil.frame = CGRectMake(withSelfView/2 + 20, yNum, withSelfView/2+withSelfView/6-25, (self.ch01ViewMain.frame.size.height-70)/5);
    self.ch03AgilLB = [[UILabel alloc]initWithFrame:CGRectMake(withSelfView/2+withSelfView/3, yNum, withSelfView/2+withSelfView/6-25, (self.ch01ViewMain.frame.size.height-70)/5)];
    self.ch03AgilLB.text = @"민첩";
    
    
    //케릭4 메인뷰
    
    self.ch04ViewMain = [[UIView alloc] initWithFrame:CGRectMake(-40-withSelfView/2+20, -(heightSelfView/2 - 60), withSelfView, heightSelfView-160)];
    self.ch04ViewMain.backgroundColor = [UIColor grayColor];
    
    self.ch04Img = [[UIImageView alloc]initWithFrame:CGRectMake(20, 45, 150, 320)];
    self.ch04Img.image = [UIImage imageNamed:@"cardBack.png"];
    
    yNum = 25.0;
    self.ch04Exp = [UIButton buttonWithType:UIButtonTypeCustom];
    self.ch04Exp.frame = CGRectMake(withSelfView/2 + 20, yNum, withSelfView/2+withSelfView/6-25, (self.ch01ViewMain.frame.size.height-70)/5);
    self.ch04ExpLB = [[UILabel alloc]initWithFrame:CGRectMake(withSelfView/2+withSelfView/3, yNum,withSelfView/2+ withSelfView/6-25, (self.ch01ViewMain.frame.size.height-70)/5)];
    self.ch04ExpLB.text = @"경험치";
    
    yNum = yNum +(self.ch01ViewMain.frame.size.height-70)/5 +5;
    self.ch04HP = [UIButton buttonWithType:UIButtonTypeCustom];
    self.ch04HP.frame = CGRectMake(withSelfView/2 + 20, yNum, withSelfView/2+withSelfView/6-25, (self.ch01ViewMain.frame.size.height-70)/5);
    self.ch04HPLB = [[UILabel alloc]initWithFrame:CGRectMake(withSelfView/2+withSelfView/3, yNum, withSelfView/2+withSelfView/6-25, (self.ch01ViewMain.frame.size.height-70)/5)];
    self.ch04HPLB.text = @"피통";
    
    
    yNum = yNum +(self.ch01ViewMain.frame.size.height-70)/5 +5;
    self.ch04Atk = [UIButton buttonWithType:UIButtonTypeCustom];
    self.ch04Atk.frame = CGRectMake(withSelfView/2 + 20, yNum, withSelfView/2+withSelfView/6-25, (self.ch01ViewMain.frame.size.height-70)/5);
    self.ch04AtkLB = [[UILabel alloc]initWithFrame:CGRectMake(withSelfView/2+withSelfView/3, yNum, withSelfView/2+withSelfView/6-25, (self.ch01ViewMain.frame.size.height-70)/5)];
    self.ch04AtkLB.text = @"공격력";
    
    yNum = yNum +(self.ch01ViewMain.frame.size.height-70)/5 +5;
    self.ch04Df = [UIButton buttonWithType:UIButtonTypeCustom];
    self.ch04Df.frame = CGRectMake(withSelfView/2 + 20, yNum, withSelfView/2+withSelfView/6-25, (self.ch01ViewMain.frame.size.height-70)/5);
    self.ch04DfLB = [[UILabel alloc]initWithFrame:CGRectMake(withSelfView/2+withSelfView/3, yNum, withSelfView/2+withSelfView/6-25, (self.ch01ViewMain.frame.size.height-70)/5)];
    self.ch04DfLB.text = @"방어력";
    
    yNum = yNum +(self.ch01ViewMain.frame.size.height-70)/5 +5;
    self.ch04Agil = [UIButton buttonWithType:UIButtonTypeCustom];
    self.ch04Agil.frame = CGRectMake(withSelfView/2 + 20, yNum, withSelfView/2+withSelfView/6-25, (self.ch01ViewMain.frame.size.height-70)/5);
    self.ch04AgilLB = [[UILabel alloc]initWithFrame:CGRectMake(withSelfView/2+withSelfView/3, yNum, withSelfView/2+withSelfView/6-25, (self.ch01ViewMain.frame.size.height-70)/5)];
    self.ch04AgilLB.text = @"민첩";
    
 
    
}


- (void)charcFBtn01Remove:(UIButton *)sender
{
    [self.charcFront01 removeFromSuperview];
}
- (void)charcFBtn02Remove:(UIButton *)sender
{
    [self.charcFront02 removeFromSuperview];
}
- (void)charcFBtn03Remove:(UIButton *)sender
{
    [self.charcFront03 removeFromSuperview];
}
- (void)charcFBtn04Remove:(UIButton *)sender
{
    [self.charcFront04 removeFromSuperview];
}


- (void)ch01NewView:(UIButton *)sender
{
    [self.centerView05 addSubview:self.ch01ViewMain];
    [self.ch01ViewMain addSubview:self.ch01Img];
    [self.ch01ViewMain addSubview:self.ch01Exp];
    [self.ch01ViewMain addSubview:self.ch01ExpLB];
    [self.ch01ViewMain addSubview:self.ch01HP];
    [self.ch01ViewMain addSubview:self.ch01HPLB];
    [self.ch01ViewMain addSubview:self.ch01Atk];
    [self.ch01ViewMain addSubview:self.ch01AtkLB];
    [self.ch01ViewMain addSubview:self.ch01Df];
    [self.ch01ViewMain addSubview:self.ch01DfLB];
    [self.ch01ViewMain addSubview:self.ch01Agil];
    [self.ch01ViewMain addSubview:self.ch01AgilLB];
    [self.ch01ViewMain addSubview:self.ch01Exit];
    
    self.charBtn01.userInteractionEnabled =NO;
    self.charBtn02.userInteractionEnabled =NO;
    self.charBtn03.userInteractionEnabled =NO;
    self.charBtn04.userInteractionEnabled =NO;
    
    self.ch01Img.userInteractionEnabled = YES;
    
}

- (void)ch02NewView:(UIButton *)sender
{
    [self.charBtn04 addSubview:self.ch02ViewMain];
    [self.ch02ViewMain addSubview:self.ch02Img];
    [self.ch02ViewMain addSubview:self.ch02Exp];
    [self.ch02ViewMain addSubview:self.ch02ExpLB];
    [self.ch02ViewMain addSubview:self.ch02HP];
    [self.ch02ViewMain addSubview:self.ch02HPLB];
    [self.ch02ViewMain addSubview:self.ch02Atk];
    [self.ch02ViewMain addSubview:self.ch02AtkLB];
    [self.ch02ViewMain addSubview:self.ch02Df];
    [self.ch02ViewMain addSubview:self.ch02DfLB];
    [self.ch02ViewMain addSubview:self.ch02Agil];
    [self.ch02ViewMain addSubview:self.ch02AgilLB];
}

- (void)ch03NewView:(UIButton *)sender
{
    [self.charBtn04 addSubview:self.ch03ViewMain];
    [self.ch03ViewMain addSubview:self.ch03Img];
    [self.ch03ViewMain addSubview:self.ch03Exp];
    [self.ch03ViewMain addSubview:self.ch03ExpLB];
    [self.ch03ViewMain addSubview:self.ch03HP];
    [self.ch03ViewMain addSubview:self.ch03HPLB];
    [self.ch03ViewMain addSubview:self.ch03Atk];
    [self.ch03ViewMain addSubview:self.ch03AtkLB];
    [self.ch03ViewMain addSubview:self.ch03Df];
    [self.ch03ViewMain addSubview:self.ch03DfLB];
    [self.ch03ViewMain addSubview:self.ch03Agil];
    [self.ch03ViewMain addSubview:self.ch03AgilLB];
}

- (void)ch04NewView:(UIButton *)sender
{
    [self.charBtn04 addSubview:self.ch04ViewMain];
    [self.ch04ViewMain addSubview:self.ch04Img];
    [self.ch04ViewMain addSubview:self.ch04Exp];
    [self.ch04ViewMain addSubview:self.ch04ExpLB];
    [self.ch04ViewMain addSubview:self.ch04HP];
    [self.ch04ViewMain addSubview:self.ch04HPLB];
    [self.ch04ViewMain addSubview:self.ch04Atk];
    [self.ch04ViewMain addSubview:self.ch04AtkLB];
    [self.ch04ViewMain addSubview:self.ch04Df];
    [self.ch04ViewMain addSubview:self.ch04DfLB];
    [self.ch04ViewMain addSubview:self.ch04Agil];
    [self.ch04ViewMain addSubview:self.ch04AgilLB];
}

- (void)ch01ExitAndRemove:(UIButton *)sender
{
    [self.ch01ViewMain removeFromSuperview];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
