//
//  CustomView.m
//  TableViewPractice01
//
//  Created by abyssinaong on 2017. 2. 17..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "CustomView.h"

@interface CustomView()
//프로필 이미지뷰
@property (nonatomic, weak) UIImageView *profileImgView;

@property (nonatomic, weak) UIView *profileTextContiner;
//네임 레이블
@property (nonatomic, weak) UILabel *titleLB;
@property (nonatomic, weak) UILabel *nameLB;
//자기소개 레이블뷰
@property (nonatomic, weak) UILabel *profileLB;

@end

@implementation CustomView

//초기화
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self createSubViews];
        [self updateLayout];
        [self test];
        
    }
    return self;
}

- (void)createSubViews
{
    UIImageView *profileImgView = [[UIImageView alloc] init];
//    profileImgView.image = [UIImage imageNamed:@"t2.jpg"];
    profileImgView.clipsToBounds = YES;
    profileImgView.layer.cornerRadius = 50;
    [self addSubview:profileImgView];
    self.profileImgView = profileImgView;
    
    UIView *profileTextContiner = [[UIView alloc] init];
    [self addSubview:profileImgView];
    self.profileImgView = profileImgView;
    
    UILabel *titleLB = [[UILabel alloc] init];
    titleLB.text = @"Profile";
    titleLB.textColor = [UIColor lightGrayColor];
    titleLB.textAlignment = NSTextAlignmentRight;
    titleLB.font = [UIFont systemFontOfSize:9];
    [profileTextContiner addSubview:titleLB];
    self.titleLB = titleLB;
    
    UILabel *nameLB = [[UILabel alloc] init];
    nameLB.textColor = [UIColor blackColor];
    nameLB.textAlignment = NSTextAlignmentCenter;
    nameLB.font = [UIFont systemFontOfSize:20];
    [profileTextContiner addSubview:nameLB];
    self.nameLB = nameLB;
    
    
    //
    UILabel *profileLB = [[UILabel alloc] init];
    profileLB.numberOfLines = 0;
    profileLB.lineBreakMode = NSLineBreakByWordWrapping;
    [self addSubview:profileLB];
    self.profileLB =profileLB;
    
}

- (void)updateLayout{
    const CGFloat MARGIN = 15;
    
    CGFloat offsetX = MARGIN;
    CGFloat offsetY = MARGIN;
    
    self.profileImgView.frame = CGRectMake(offsetX, offsetY, 100, 100);
    self.nameLB.frame = CGRectMake(offsetX+100, offsetY, self.frame.size.width - offsetX -MARGIN, self.profileImgView.frame.size.height);
    
    offsetX += self.profileImgView.frame.size.width;
    
    self.profileTextContiner.frame = CGRectMake(offsetX, offsetY, self.frame.size.width - offsetX -MARGIN, self.profileImgView.frame.size.height);
    
    offsetX = MARGIN;
    offsetY += self.profileImgView.frame.size.height;
    self.profileLB.frame = CGRectMake(offsetX, offsetY, self.frame.size.width - (MARGIN*2), self.frame.size.height- offsetY-MARGIN);
    
}


- (void)test{
    
    self.backgroundColor = [UIColor grayColor];
    self.profileLB.backgroundColor = [UIColor brownColor];
    self.profileImgView.backgroundColor = [UIColor yellowColor];
    self.profileTextContiner.backgroundColor =[UIColor blueColor];
    self.profileLB.backgroundColor = [UIColor orangeColor];
    
}


- (void)setDataWithIMGName:(NSString *)imgUrlStr
                      name:(NSString *)nameStr
                       msg:(NSString *)msgStr
{
    
    self.profileImgView.image = [UIImage imageNamed:imgUrlStr];
    self.nameLB.text = nameStr;
    self.profileLB.text = msgStr;
}


@end
