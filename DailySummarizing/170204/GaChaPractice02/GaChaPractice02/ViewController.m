//
//  ViewController.m
//  GaChaPractice02
//
//  Created by abyssinaong on 2017. 2. 5..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    self.textHP = @"500";
    self.textStr01=@"60";
    self.textDef01=@"30";
    
    self.textHP02 = @"550";
    self.textStr02=@"50";
    self.textDef02=@"40";
    
    self.textHP03 = @"400";
    self.textStr03=@"55";
    self.textDef03=@"45";
    
    self.textHP04 = @"450";
    self.textStr04=@"35";
    self.textDef04=@"75";
    
    self.textMoney = @"0";
    
    self.textPoint = @"0";
    
    CGRect frame = CGRectMake(20, 40, self.view.frame.size.width-40, self.view.frame.size.height-120);
    UIView *mainView=[[UIView alloc] init];
    mainView.frame = frame;
    mainView.backgroundColor = [UIColor blackColor];
    [self.view addSubview:mainView];
 
    
//    ToolClass *tool = [[ToolClass alloc] init];
//    
//    UIView *mainView01=[tool createView];
//    
//    UIView *mainView02=[[[ToolClass alloc] init] createView];
//    UIView *mainView03=[[[ToolClass alloc] init] createView];
    
    CGFloat yNum = 2;
    CGFloat widthMain = mainView.frame.size.width;
    CGFloat heighrMain = (mainView.frame.size.height-10)/4;
    
    //top
    self.moneyTextLB = [ToolClass topLabelSetX:40 setY:25 selcMode:2];
    [self.moneyTextLB setText:self.textMoney];

    UIImageView *moneyImg = [ToolClass createImageView:@"gold.jpg" setX:20 setWidth:15 setHeight:15];
    moneyImg.layer.cornerRadius =10.0f;
    
    NSString *imgName[8] = {NULL,NULL, NULL, NULL,NULL,NULL, NULL, NULL};
    for(NSUInteger i =0;i<=7 ;i +=1 ){
        imgName[i] = [ToolClass randomCharctorName];
    }
    
    self.pointTextLB = [ToolClass topLabelSetX:self.view.frame.size.width/2+20 setY:25 selcMode:2];
    [self.pointTextLB setText:self.textPoint];
    
    UIImageView *pointImg = [ToolClass createImageView:@"point.png" setX:self.view.frame.size.width/2 setWidth:15 setHeight:15];
    
    frame = CGRectMake(0, yNum, widthMain, heighrMain);
    UIView *subMain01 =[ToolClass subMainCreate];
    subMain01.frame = frame;
    
    CGFloat imgWidth = subMain01.frame.size.width/4;
    CGFloat imgHeight = subMain01.frame.size.height;
    UIImageView *subImage01 = [ToolClass createImageView:imgName[0] setX:0 setWidth:imgWidth setHeight:imgHeight];
    
    
    UIButton *sub01HP = [ToolClass createButtonSetxNum:imgWidth+5 yNum:imgHeight/4];
    UILabel *sub01HPText = [ToolClass createLabelSetX:imgWidth+20 setY:imgHeight/4 selcMode:1];
    self.sub01HPNum = [ToolClass createLabelSetX:imgWidth+45 setY:imgHeight/4 selcMode:2];
    [sub01HPText setText:@"HP"];
    [self.sub01HPNum setText:self.textHP];
    [sub01HP addTarget:self action:@selector(plusHP:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *sub01Str = [ToolClass createButtonSetxNum:imgWidth+5 yNum:imgHeight/4*2];
    UILabel *sub01StrText = [ToolClass createLabelSetX:imgWidth+20 setY:imgHeight/4*2 selcMode:1];
    self.sub01StrNum = [ToolClass createLabelSetX:imgWidth+45 setY:imgHeight/4*2 selcMode:2];
    [sub01StrText setText:@"Str"];
    [self.sub01StrNum setText:self.textStr01];
    [sub01Str addTarget:self action:@selector(plusStr:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *sub01Def = [ToolClass createButtonSetxNum:imgWidth+5 yNum:imgHeight/4*3];
    UILabel *sub01DefText = [ToolClass createLabelSetX:imgWidth+20 setY:imgHeight/4*3 selcMode:1];
    self.sub01DefNum = [ToolClass createLabelSetX:imgWidth+45 setY:imgHeight/4*3 selcMode:2];
    [sub01DefText setText:@"Def"];
    [self.sub01DefNum setText:self.textDef01];
    [sub01Def addTarget:self action:@selector(plusDef:) forControlEvents:UIControlEventTouchUpInside];
    
//    UIImageView *subImage05 = [ToolClass createImageView:imgName[4] setX:imgWidth*2 setWidth:imgWidth setHeight:imgHeight];
    
    
    yNum = yNum + 2 + heighrMain;
    frame = CGRectMake(0, yNum, widthMain, heighrMain);
    UIView *subMain02 =[ToolClass subMainCreate];
    UIImageView *subImage02 = [ToolClass createImageView:imgName[1] setX:0 setWidth:imgWidth setHeight:imgHeight];
    
    
//    UIImageView *subImage06 = [ToolClass createImageView:imgName[5] setX:imgWidth*2 setWidth:imgWidth setHeight:imgHeight];
    subMain02.frame = frame;
    UIButton *sub02HP = [ToolClass createButtonSetxNum:imgWidth+5 yNum:imgHeight/4];
    UILabel *sub02HPText = [ToolClass createLabelSetX:imgWidth+20 setY:imgHeight/4 selcMode:1];
    self.sub02HPNum = [ToolClass createLabelSetX:imgWidth+45 setY:imgHeight/4 selcMode:2];
    [sub02HPText setText:@"HP"];
    [self.sub02HPNum setText:self.textHP02];
    [sub02HP addTarget:self action:@selector(plusHP02:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *sub02Str = [ToolClass createButtonSetxNum:imgWidth+5 yNum:imgHeight/4*2];
    UILabel *sub02StrText = [ToolClass createLabelSetX:imgWidth+20 setY:imgHeight/4*2 selcMode:1];
    self.sub02StrNum = [ToolClass createLabelSetX:imgWidth+45 setY:imgHeight/4*2 selcMode:2];
    [sub02StrText setText:@"Str"];
    [self.sub02StrNum setText:self.textStr02];
    [sub02Str addTarget:self action:@selector(plusStr02:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *sub02Def = [ToolClass createButtonSetxNum:imgWidth+5 yNum:imgHeight/4*3];
    UILabel *sub02DefText = [ToolClass createLabelSetX:imgWidth+20 setY:imgHeight/4*3 selcMode:1];
    self.sub02DefNum = [ToolClass createLabelSetX:imgWidth+45 setY:imgHeight/4*3 selcMode:2];
    [sub02DefText setText:@"Def"];
    [self.sub02DefNum setText:self.textDef02];
    [sub02Def addTarget:self action:@selector(plusDef02:) forControlEvents:UIControlEventTouchUpInside];
    
    
    yNum = yNum + 2 + heighrMain;
    frame = CGRectMake(0, yNum, widthMain, heighrMain);
    UIView *subMain03 =[ToolClass subMainCreate];
    UIImageView *subImage03 = [ToolClass createImageView:imgName[2] setX:0 setWidth:imgWidth setHeight:imgHeight];
    
    
//    UIImageView *subImage07 = [ToolClass createImageView:imgName[6] setX:imgWidth*2 setWidth:imgWidth setHeight:imgHeight];
    subMain03.frame = frame;
    UIButton *sub03HP = [ToolClass createButtonSetxNum:imgWidth+5 yNum:imgHeight/4];
    UILabel *sub03HPText = [ToolClass createLabelSetX:imgWidth+20 setY:imgHeight/4 selcMode:1];
    self.sub03HPNum = [ToolClass createLabelSetX:imgWidth+45 setY:imgHeight/4 selcMode:2];
    [sub03HPText setText:@"HP"];
    [self.sub03HPNum setText:self.textHP03];
    [sub03HP addTarget:self action:@selector(plusHP03:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *sub03Str = [ToolClass createButtonSetxNum:imgWidth+5 yNum:imgHeight/4*2];
    UILabel *sub03StrText = [ToolClass createLabelSetX:imgWidth+20 setY:imgHeight/4*2 selcMode:1];
    self.sub03StrNum = [ToolClass createLabelSetX:imgWidth+45 setY:imgHeight/4*2 selcMode:2];
    [sub03StrText setText:@"Str"];
    [self.sub03StrNum setText:self.textStr03];
    [sub03Str addTarget:self action:@selector(plusStr03:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *sub03Def = [ToolClass createButtonSetxNum:imgWidth+5 yNum:imgHeight/4*3];
    UILabel *sub03DefText = [ToolClass createLabelSetX:imgWidth+20 setY:imgHeight/4*3 selcMode:1];
    self.sub03DefNum = [ToolClass createLabelSetX:imgWidth+45 setY:imgHeight/4*3 selcMode:2];
    [sub03DefText setText:@"Def"];
    [self.sub03DefNum setText:self.textDef03];
    [sub03Def addTarget:self action:@selector(plusDef03:) forControlEvents:UIControlEventTouchUpInside];
    
    
    yNum = yNum + 2 + heighrMain;
    frame = CGRectMake(0, yNum, widthMain, heighrMain);
    UIView *subMain04 =[ToolClass subMainCreate];
    subMain04.frame = frame;
    UIImageView *subImage04 = [ToolClass createImageView:imgName[3] setX:0 setWidth:imgWidth setHeight:imgHeight];
    
    
//    UIImageView *subImage08 = [ToolClass createImageView:imgName[7] setX:imgWidth*2 setWidth:imgWidth setHeight:imgHeight];
    
    UIButton *sub04HP = [ToolClass createButtonSetxNum:imgWidth+5 yNum:imgHeight/4];
    UILabel *sub04HPText = [ToolClass createLabelSetX:imgWidth+20 setY:imgHeight/4 selcMode:1];
    self.sub04HPNum = [ToolClass createLabelSetX:imgWidth+45 setY:imgHeight/4 selcMode:2];
    [sub04HPText setText:@"HP"];
    [self.sub04HPNum setText:self.textHP04];
    [sub04HP addTarget:self action:@selector(plusHP04:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *sub04Str = [ToolClass createButtonSetxNum:imgWidth+5 yNum:imgHeight/4*2];
    UILabel *sub04StrText = [ToolClass createLabelSetX:imgWidth+20 setY:imgHeight/4*2 selcMode:1];
    self.sub04StrNum = [ToolClass createLabelSetX:imgWidth+45 setY:imgHeight/4*2 selcMode:2];
    [sub04StrText setText:@"Str"];
    [self.sub04StrNum setText:self.textStr04];
    [sub04Str addTarget:self action:@selector(plusStr04:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *sub04Def = [ToolClass createButtonSetxNum:imgWidth+5 yNum:imgHeight/4*3];
    UILabel *sub04DefText = [ToolClass createLabelSetX:imgWidth+20 setY:imgHeight/4*3 selcMode:1];
    self.sub04DefNum = [ToolClass createLabelSetX:imgWidth+45 setY:imgHeight/4*3 selcMode:2];
    [sub04DefText setText:@"Def"];
    [self.sub04DefNum setText:self.textDef04];
    [sub04Def addTarget:self action:@selector(plusDef04:) forControlEvents:UIControlEventTouchUpInside];
    
    
    UIButton *chargeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    chargeBtn.frame = CGRectMake(self.view.frame.size.width/2, self.view.frame.size.height-60,120 , 40);
    chargeBtn.backgroundColor = [UIColor yellowColor];
    chargeBtn.layer.cornerRadius = 10.0f;
    
    [chargeBtn setTitle:@"10000원 충전" forState:UIControlStateNormal];
    [chargeBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [chargeBtn setTitle:@"충전됨" forState:UIControlStateHighlighted];
    [chargeBtn setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    [chargeBtn addTarget:self action:@selector(plusMoney:) forControlEvents:UIControlEventTouchUpInside];
    
    
    UIButton *chargePoint = [UIButton buttonWithType:UIButtonTypeCustom];
    chargePoint.frame = CGRectMake(self.view.frame.size.width/2-105, self.view.frame.size.height-60, 100, 40);
    chargePoint.backgroundColor = [UIColor yellowColor];
    chargePoint.layer.cornerRadius = 10.0f;
    
    [chargePoint setTitle:@"포인트 전환" forState:UIControlStateNormal];
    [chargePoint setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [chargePoint setTitle:@"전환됨" forState:UIControlStateHighlighted];
    [chargePoint setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    [chargePoint addTarget:self action:@selector(plusPoint:) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    [mainView addSubview:subMain01];
    
    [self.view addSubview:self.moneyTextLB];
    [self.view addSubview:moneyImg];
    [self.view addSubview:self.pointTextLB];
    [self.view addSubview:pointImg];
    [self.view addSubview:chargeBtn];
    [self.view addSubview:chargePoint];
    
    
    [subMain01 addSubview:subImage01];
//    [subMain01 addSubview:subImage05];
    [subMain01 addSubview:sub01HP];
    [subMain01 addSubview:sub01HPText];
    [subMain01 addSubview:self.sub01HPNum];

    [subMain01 addSubview:sub01Str];
    [subMain01 addSubview:sub01StrText];
    [subMain01 addSubview:self.sub01StrNum];
    
    [subMain01 addSubview:sub01Def];
    [subMain01 addSubview:sub01DefText];
    [subMain01 addSubview:self.sub01DefNum];
    
    
    [mainView addSubview:subMain02];
    [subMain02 addSubview:subImage02];
//    [subMain02 addSubview:subImage06];
    [subMain02 addSubview:sub02HP];
    [subMain02 addSubview:sub02HPText];
    [subMain02 addSubview:self.sub02HPNum];
    
    [subMain02 addSubview:sub02Str];
    [subMain02 addSubview:sub02StrText];
    [subMain02 addSubview:self.sub02StrNum];
    
    [subMain02 addSubview:sub02Def];
    [subMain02 addSubview:sub02DefText];
    [subMain02 addSubview:self.sub02DefNum];
    
    
    
    [mainView addSubview:subMain03];
    [subMain03 addSubview:subImage03];
//    [subMain03 addSubview:subImage07];
    [subMain03 addSubview:sub03HP];
    [subMain03 addSubview:sub03HPText];
    [subMain03 addSubview:self.sub03HPNum];
    
    [subMain03 addSubview:sub03Str];
    [subMain03 addSubview:sub03StrText];
    [subMain03 addSubview:self.sub03StrNum];
    
    [subMain03 addSubview:sub03Def];
    [subMain03 addSubview:sub03DefText];
    [subMain03 addSubview:self.sub03DefNum];
    
    [mainView addSubview:subMain04];
    [subMain04 addSubview:subImage04];
//    [subMain04 addSubview:subImage08];
    [subMain04 addSubview:sub04HP];
    [subMain04 addSubview:sub04HPText];
    [subMain04 addSubview:self.sub04HPNum];
    
    [subMain04 addSubview:sub04Str];
    [subMain04 addSubview:sub04StrText];
    [subMain04 addSubview:self.sub04StrNum];
    
    [subMain04 addSubview:sub04Def];
    [subMain04 addSubview:sub04DefText];
    [subMain04 addSubview:self.sub04DefNum];
    
//    ToolClass *a1 = [[ToolClass alloc] init];
//    [a1 createView];
//    //a1.frame = CGRectMake(0, 0, 100, 100);
//    a1.backgroundColor = [UIColor blueColor];
//    [subMain04 addSubview:a1];
    
//    ToolClass *main01 = [[ToolClass alloc]init];
//    
//    [self.sub04DefNum addSubview:main01];

}


- (void)plusHP:(UIButton *)sender
{
    self.numPoint = [self.textPoint intValue];
    if (self.numPoint != 0){
        self.numHP = [self.textHP intValue];
        self.numPoint -=1;
        self.numHP +=1;
        self.textPoint = [NSString stringWithFormat:@"%ld", self.numPoint];
        self.textHP = [NSString stringWithFormat: @"%ld", self.numHP];
        [self.sub01HPNum setText:self.textHP];
        [self.pointTextLB setText:self.textPoint];
    }
}

- (void)plusStr:(UIButton *)sender
{
    self.numPoint = [self.textPoint intValue];
    if (self.numPoint != 0){
        self.numStr01 = [self.textStr01 intValue];
        self.numPoint -=1;
        self.numStr01 +=1;
        self.textPoint = [NSString stringWithFormat:@"%ld", self.numPoint];
        self.textStr01 = [NSString stringWithFormat: @"%ld", self.numStr01];
        [self.sub01StrNum setText:self.textStr01];
        [self.pointTextLB setText:self.textPoint];
    }
}

- (void)plusDef:(UIButton *)sender
{
    self.numPoint = [self.textPoint intValue];
    if (self.numPoint != 0){
        self.numDef01 = [self.textDef01 intValue];
        self.numPoint -=1;
        self.numDef01 +=1;
        self.textPoint = [NSString stringWithFormat:@"%ld", self.numPoint];
        self.textDef01 = [NSString stringWithFormat: @"%ld", self.numDef01];
        [self.sub01DefNum setText:self.textDef01];
        [self.pointTextLB setText:self.textPoint];
    }
}


//

- (void)plusHP02:(UIButton *)sender
{
    self.numPoint = [self.textPoint intValue];
    if (self.numPoint != 0){
        self.numHP02 = [self.textHP02 intValue];
        self.numPoint -=1;
        self.numHP02 +=1;
        self.textPoint = [NSString stringWithFormat:@"%ld", self.numPoint];
        self.textHP02 = [NSString stringWithFormat: @"%ld", self.numHP02];
        [self.sub02HPNum setText:self.textHP02];
        [self.pointTextLB setText:self.textPoint];
    }
}


- (void)plusStr02:(UIButton *)sender
{
    self.numPoint = [self.textPoint intValue];
    if (self.numPoint != 0){
        self.numStr02 = [self.textStr02 intValue];
        self.numPoint -=1;
        self.numStr02 +=1;
        self.textPoint = [NSString stringWithFormat:@"%ld", self.numPoint];
        self.textStr02 = [NSString stringWithFormat: @"%ld", self.numStr02];
        [self.sub02StrNum setText:self.textStr02];
        [self.pointTextLB setText:self.textPoint];
        
    }
}

- (void)plusDef02:(UIButton *)sender
{
    self.numPoint = [self.textPoint intValue];
    if (self.numPoint != 0){
        self.numDef02 = [self.textDef02 intValue];
        self.numPoint -=1;
        self.numDef02 +=1;
        self.textPoint = [NSString stringWithFormat:@"%ld", self.numPoint];
        self.textDef02 = [NSString stringWithFormat: @"%ld", self.numDef02];
        [self.sub02DefNum setText:self.textDef02];
        [self.pointTextLB setText:self.textPoint];
    }
}


//
- (void)plusHP03:(UIButton *)sender
{
    self.numPoint = [self.textPoint intValue];
    if (self.numPoint != 0){
        self.numHP03 = [self.textHP03 intValue];
        self.numPoint -=1;
        self.numHP03 +=1;
        self.textPoint = [NSString stringWithFormat:@"%ld", self.numPoint];
        self.textHP03 = [NSString stringWithFormat: @"%ld", self.numHP03];
        [self.sub03HPNum setText:self.textHP03];
        [self.pointTextLB setText:self.textPoint];
    }
}

- (void)plusStr03:(UIButton *)sender
{
    self.numPoint = [self.textPoint intValue];
    if (self.numPoint != 0){
        self.numStr03 = [self.textStr03 intValue];
        self.numPoint -=1;
        self.numStr03 +=1;
        self.textPoint = [NSString stringWithFormat:@"%ld", self.numPoint];
        self.textStr03 = [NSString stringWithFormat: @"%ld", self.numStr03];
        [self.sub03StrNum setText:self.textStr03];
        [self.pointTextLB setText:self.textPoint];
    }
    
}

- (void)plusDef03:(UIButton *)sender
{
    self.numPoint = [self.textPoint intValue];
    if (self.numPoint != 0){
        self.numDef03 = [self.textDef03 intValue];
        self.numPoint -=1;
        self.numDef03 +=1;
        self.textPoint = [NSString stringWithFormat:@"%ld", self.numPoint];
        self.textDef03 = [NSString stringWithFormat: @"%ld", self.numDef03];
        [self.sub03DefNum setText:self.textDef03];
        [self.pointTextLB setText:self.textPoint];
    }
}

//

- (void)plusHP04:(UIButton *)sender
{
    self.numPoint = [self.textPoint intValue];
    if (self.numPoint != 0){
        self.numHP04 = [self.textHP04 intValue];
        self.numPoint -=1;
        self.numHP04 +=1;
        self.textPoint = [NSString stringWithFormat:@"%ld", self.numPoint];
        self.textHP04 = [NSString stringWithFormat: @"%ld", self.numHP04];
        [self.sub04HPNum setText:self.textHP04];
        [self.pointTextLB setText:self.textPoint];
    }
}

- (void)plusStr04:(UIButton *)sender
{
    self.numPoint = [self.textPoint intValue];
    if (self.numPoint != 0){
        self.numStr04 = [self.textStr04 intValue];
        self.numPoint -=1;
        self.numStr04 +=1;
        self.textPoint = [NSString stringWithFormat:@"%ld", self.numPoint];
        self.textStr04 = [NSString stringWithFormat: @"%ld", self.numStr04];
        [self.sub04StrNum setText:self.textStr04];
        [self.pointTextLB setText:self.textPoint];
    }
}

- (void)plusDef04:(UIButton *)sender
{
    self.numPoint = [self.textPoint intValue];
    if (self.numPoint != 0){
        self.numDef04 = [self.textDef04 intValue];
        self.numPoint -=1;
        self.numDef04 +=1;
        self.textPoint = [NSString stringWithFormat:@"%ld", self.numPoint];
        self.textDef04 = [NSString stringWithFormat: @"%ld", self.numDef04];
        [self.sub04DefNum setText:self.textDef04];
        [self.pointTextLB setText:self.textPoint];
    }
    
}

- (void)plusMoney:(UIButton *)sender
{
    
    self.numMoney = [self.textMoney intValue];
    self.numMoney +=10000;
    self.textMoney = [NSString stringWithFormat:@"%ld", self.numMoney];
    [self.moneyTextLB setText:self.textMoney];
}


- (void)plusPoint:(UIButton *)sender
{
    self.numMoney = [self.textMoney intValue];
    self.numPoint = [self.textPoint intValue];
    if (self.numMoney != 0){
        self.numPoint = self.numPoint + self.numMoney/10000;
        self.numMoney = 0;
        self.textMoney = [NSString stringWithFormat:@"%ld", self.numMoney];
        self.textPoint = [NSString stringWithFormat:@"%ld", self.numPoint];
        [self.moneyTextLB setText:self.textMoney];
        [self.pointTextLB setText:self.textPoint];
        
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
