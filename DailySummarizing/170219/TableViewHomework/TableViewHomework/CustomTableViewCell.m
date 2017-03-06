//
//  CustomTableViewCell.m
//  TableViewHomework
//
//  Created by abyssinaong on 2017. 2. 19..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "CustomTableViewCell.h"

@interface CustomTableViewCell()

//메인 뷰 모음
@property (weak) UIView *backgroundView1;
@property (weak) UIView *mainView;
@property (weak) UILabel *explainLB;
//프로필 부분 모음
@property (weak) UIImageView *profileImg;
@property (weak) UILabel *nameLB;
@property (weak) UILabel *nationLB;
//메인이미지부분 모음
@property (weak) UIImageView *mainImg;
@property (weak) UILabel *nextLB;
@property (weak) UILabel *mainTitle;
@property (weak) UILabel *startYearNumber;
@property (weak) UILabel *startMonthStr;
@property (weak) UILabel *totalDays;
@property (weak) UILabel *dayLB;
@property (weak) UILabel *totalKilometer;
@property (weak) UILabel *kilometerLB;
@property (weak) UILabel *totalStep;
@property (weak) UILabel *stepLB;


@end

@implementation CustomTableViewCell


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self creatMainView];
        [self creatProfile];
        [self CreatMainImgView];
        [self profileColorSetting];
        [self mainViewColorSetting];
        [self mainImgColorSetting];
    }
    return self;
}

- (void)layoutSubviews{
    [self profileFrameSetting];
    [self mainImgFrameSetting];
    [self mainViewframeSetting];
}

#pragma config of view

// 셀을 구성하는 전체 UIView를 넣는다. cell의 밑바탕을 구성하는 부분과 셀의 간단한 설명을 넣은 부분
- (void)creatMainView{
    
    UIView *backgroundView = [[UIView alloc] init];
    [self.contentView addSubview:backgroundView];
    self.backgroundView1 = backgroundView;
    
    UIView *mainView = [[UIView alloc]init];
    [backgroundView addSubview:mainView];
    mainView.layer.cornerRadius = 5.0;
    self.mainView = mainView;
    
    UILabel *explainLB =[[UILabel alloc] init];
    [mainView addSubview:explainLB];
    self.explainLB = explainLB;
    
}

// 셀 구성 부분 중 상단 프로필 부분을 구성한다. 프로필 이미지, 이름, 국적을 넣는다.
- (void)creatProfile{
    
    UIImageView *profileImg = [[UIImageView alloc] init];
    [self.mainView addSubview:profileImg];
    self.profileImg =profileImg;
    
    UILabel *nameLB = [[UILabel alloc] init];
    [self.mainView addSubview:nameLB];
    self.nameLB = nameLB;
    
    UILabel *nationLB = [[UILabel alloc]init];
    [self.mainView addSubview:nationLB];
    self.nationLB = nationLB;
    
}

// 메인 이미지와  셀의 이름, 시작 년도, 일수, 총 이동거리, 이동 단계 를 구성한다.
- (void)CreatMainImgView{
    
    UIImageView *mainImg = [[UIImageView alloc] init];
    [self.mainView addSubview:mainImg];
    self.mainImg =mainImg;
    
    UILabel *mainTitle = [[UILabel alloc]init];
    [mainImg addSubview:mainTitle];
    self.mainTitle = mainTitle;
    
    UILabel *nextLB = [[UILabel alloc]init];
    [mainImg addSubview:nextLB];
    self.nextLB = nextLB;
    
    UILabel *startYearNumber = [[UILabel alloc]init];
    [mainImg addSubview:startYearNumber];
    self.startYearNumber = startYearNumber;
    
    UILabel *startMonthStr = [[UILabel alloc]init];
    [mainImg addSubview:startMonthStr];
    self.startMonthStr = startMonthStr;
    
    UILabel *totalDays = [[UILabel alloc] init];
    [mainImg addSubview:totalDays];
    self.totalDays = totalDays;
    
    UILabel *dayLB = [[UILabel alloc] init];
    [mainImg addSubview:dayLB];
    self.dayLB = dayLB;
    
    UILabel *totalKilometer = [[UILabel alloc] init];
    [mainImg addSubview:totalKilometer];
    self.totalKilometer = totalKilometer;
    
    UILabel *kilometerLB = [[UILabel alloc] init];
    [mainImg addSubview:kilometerLB];
    self.kilometerLB = kilometerLB;
    
    UILabel *totalStep = [[UILabel alloc] init];
    [mainImg addSubview:totalStep];
    self.totalStep = totalStep;
    
    UILabel *stepLB = [[UILabel alloc] init];
    [mainImg addSubview:stepLB];
    self.stepLB = stepLB;
    
}


#pragma detail of frame

- (void)mainViewframeSetting{
    
    self.backgroundView1.frame = CGRectMake(0, 0, self.contentView.frame.size.width, self.contentView.frame.size.height);
    self.mainView.frame = CGRectMake(5, 5, self.contentView.frame.size.width-10, self.contentView.frame.size.height-10);
    
    CGFloat mainImgWidth = self.mainView.frame.size.width;
    CGFloat explainOffsetY = self.mainImg.frame.size.height + (self.nameLB.frame.size.height*2 + 60 ) +20;
    CGFloat explainHeigth = (self.nameLB.frame.size.height*2 + 60 ) -40;
    
    self.explainLB.frame = CGRectMake(40, explainOffsetY, mainImgWidth-80, explainHeigth);
    self.explainLB.numberOfLines = 2;
    self.explainLB.textAlignment = NSTextAlignmentCenter;
    self.explainLB.font = [UIFont systemFontOfSize:12.0];
    
}



- (void)profileFrameSetting{
    
    CGFloat mainWidth = self.contentView.frame.size.width-10;
//    CGFloat mainHeight = self.mainView.frame.size.height;
    
    self.profileImg.frame = CGRectMake(20, 20, 40, 40);
    self.profileImg.clipsToBounds = YES;
    self.profileImg.layer.cornerRadius = 20.0;
    
    CGFloat labelWidth = mainWidth - self.profileImg.frame.size.width -50;
    CGFloat labelHeight = (self.profileImg.frame.size.height - 10)/2;
    
    self.nameLB.frame = CGRectMake(70, 20, labelWidth, labelHeight);
    self.nameLB.textAlignment = NSTextAlignmentLeft;
    self.nameLB.font = [UIFont boldSystemFontOfSize:15.0];
    
    self.nationLB.frame = CGRectMake(70, labelHeight + 25, labelWidth, labelHeight);
    self.nationLB.textAlignment = NSTextAlignmentLeft;
    self.nationLB.font = [UIFont systemFontOfSize:12.0];
    
}



- (void)mainImgFrameSetting{
    
    CGFloat mainImgWidth = self.contentView.frame.size.width-10;
    CGFloat mainImgHeight = self.contentView.frame.size.height-10 - (self.nameLB.frame.size.height*2 + 60 )*2;
    
    self.mainImg.frame = CGRectMake(0, (self.nameLB.frame.size.height*2 + 60 ), mainImgWidth, mainImgHeight);
    
    CGFloat subWidth = mainImgWidth;
    CGFloat subHeight = mainImgHeight/3;
    
    self.mainTitle.frame = CGRectMake(20, subHeight, subWidth - 40 - 40, subHeight-20);
    self.mainTitle.textAlignment = NSTextAlignmentLeft;
    self.mainTitle.numberOfLines = 2;
    self.mainTitle.font = [UIFont boldSystemFontOfSize:22.0];
    
    self.nextLB.frame = CGRectMake(self.mainImg.frame.size.width - 50 , subHeight + self.mainTitle.frame.size.height/3, self.mainTitle.frame.size.height/3, self.mainTitle.frame.size.height/3);
    self.nextLB.layer.borderWidth = 1;
    self.nextLB.clipsToBounds = YES;
    self.nextLB.layer.cornerRadius = (self.mainTitle.frame.size.height/3)/2;
    self.nextLB.textAlignment = NSTextAlignmentCenter;
    
    CGFloat subOffsetX = self.mainTitle.frame.origin.x +10;
    CGFloat subOffsetY = self.mainImg.frame.size.height*2/3 + 10;
    CGFloat labelWidth = ((mainImgWidth - 60)/2)/3;
    
    self.startYearNumber.frame = CGRectMake(subOffsetX, subOffsetY, labelWidth, 20);
    self.startYearNumber.textAlignment = NSTextAlignmentLeft;
    self.startYearNumber.font = [UIFont boldSystemFontOfSize:15.0];
    self.startMonthStr.frame = CGRectMake(subOffsetX, subOffsetY + 25, labelWidth, 15);
    self.startMonthStr.textAlignment = NSTextAlignmentLeft;
    self.startMonthStr.font = [UIFont systemFontOfSize:12.0];
    
    subOffsetX += labelWidth*2;
    
    self.totalDays.frame = CGRectMake(subOffsetX, subOffsetY, labelWidth, 20);
    self.totalDays.textAlignment = NSTextAlignmentLeft;
    self.totalDays.font = [UIFont boldSystemFontOfSize:15.0];
    self.dayLB.frame = CGRectMake(subOffsetX, subOffsetY + 25, labelWidth, 15);
    self.dayLB.textAlignment = NSTextAlignmentLeft;
    self.dayLB.font = [UIFont systemFontOfSize:12.0];
    
    
    subOffsetX = mainImgWidth/2 + 10;
    labelWidth = (mainImgWidth/2 - 30 )/3;
    
    self.totalKilometer.frame =CGRectMake(subOffsetX, subOffsetY, labelWidth*2, 20);
    self.totalKilometer.textAlignment = NSTextAlignmentLeft;
    self.totalKilometer.font = [UIFont boldSystemFontOfSize:15.0];
    
    self.kilometerLB.frame = CGRectMake(subOffsetX, subOffsetY + 25, labelWidth, 15);
    self.kilometerLB.textAlignment = NSTextAlignmentLeft;
    self.kilometerLB.font = [UIFont systemFontOfSize:12.0];
    
    subOffsetX += labelWidth*2;
    
    self.totalStep.frame = CGRectMake(subOffsetX, subOffsetY, labelWidth, 20);
    self.totalStep.textAlignment = NSTextAlignmentLeft;
    self.totalStep.font = [UIFont boldSystemFontOfSize:15.0];
    self.stepLB.frame = CGRectMake(subOffsetX, subOffsetY + 25, labelWidth, 15);
    self.stepLB.textAlignment = NSTextAlignmentLeft;
    self.stepLB.font = [UIFont systemFontOfSize:12.0];
    
    
}



#pragma config of color


- (void)profileColorSetting {
    
    self.nameLB.textColor = [UIColor blackColor];
    self.nameLB.backgroundColor = [UIColor clearColor];
    
    self.nationLB.textColor = [UIColor grayColor];
    self.nationLB.backgroundColor = [UIColor clearColor];
}


- (void)mainViewColorSetting{
    self.backgroundView1.backgroundColor = [UIColor lightGrayColor];
    
    self.mainView.backgroundColor = [UIColor whiteColor];
    
    self.explainLB.backgroundColor = [UIColor clearColor];
    
    self.explainLB.textColor = [UIColor grayColor];
    
}

- (void)mainImgColorSetting{
    
    self.mainTitle.textColor = [UIColor whiteColor];
    self.mainTitle.backgroundColor = [UIColor clearColor];
    self.nextLB.layer.borderColor = [UIColor whiteColor].CGColor;
    self.nextLB.textColor = [UIColor whiteColor];
    
    self.startYearNumber.textColor = [UIColor whiteColor];
    self.startYearNumber.backgroundColor = [UIColor clearColor];
    self.startMonthStr.textColor = [UIColor lightGrayColor];
    self.startMonthStr.backgroundColor = [UIColor clearColor];
    
    self.totalDays.textColor = [UIColor whiteColor];
    self.totalDays.backgroundColor = [UIColor clearColor];
    self.dayLB.textColor = [UIColor lightGrayColor];
    self.dayLB.backgroundColor = [UIColor clearColor];
    
    self.totalKilometer.textColor = [UIColor whiteColor];
    self.totalKilometer.backgroundColor = [UIColor clearColor];
    self.kilometerLB.textColor = [UIColor lightGrayColor];
    self.kilometerLB.backgroundColor = [UIColor clearColor];
    
    self.totalStep.textColor = [UIColor whiteColor];
    self.totalStep.backgroundColor = [UIColor clearColor];
    self.stepLB.textColor = [UIColor lightGrayColor];
    self.stepLB.backgroundColor = [UIColor clearColor];
}


#pragma image setting

- (void)profileImageSetting:(NSString *)pImage setMainImg:(NSString *)mImg
{
    
    [self.profileImg setImage:[UIImage imageNamed:pImage]];
    
    [self.mainImg setImage:[UIImage imageNamed:mImg]];
    
}


#pragma text setting

- (void)textInsertSetName:(NSString *)name
                setNation:(NSString *)nation
                 setTitle:(NSString *)title
                  setYear:(NSString *)year
                 setMonth:(NSString *)month
             setTotalDays:(NSString *)days
             setKilometer:(NSString *)kilometer
                 setSteps:(NSString *)steps
               setExplain:(NSString *)explain
{
    self.nameLB.text = name;
    self.nationLB.text = nation;
    self.mainTitle.text = title;
    self.nextLB.text = @">";
    self.startYearNumber.text = year;
    self.startMonthStr.text = month;
    self.totalDays.text = days;
    self.dayLB.text = @"days";
    self.totalKilometer.text = kilometer;
    self.kilometerLB.text = @"kilometers";
    self.totalStep.text = steps;
    self.stepLB.text = @"steps";
    self.explainLB.text = explain;
    
}


/*
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
*/

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
