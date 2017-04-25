//
//  SettingTableViewCell.m
//  PolastepsFrontPage
//
//  Created by abyssinaong on 2017. 2. 22..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "SettingTableViewCell.h"
#import "DataCenter.h"
@interface SettingTableViewCell()

@property (nonatomic, weak) UILabel *mainLabel;
@property (nonatomic, weak) UILabel *rightSymbolLabel;
@property (nonatomic, weak) UILabel *underLabel;
@property (nonatomic, weak) UISwitch *rightSwitch;
@property (nonatomic,weak) UIView *bgView;
@property (nonatomic,weak) UIView *mainView;
@property (nonatomic,weak) UILabel *rightLabel;

@end

@implementation SettingTableViewCell




- (instancetype)initWithSecOneSetString:(NSString *)str
{
    self = [super init];
    if (self) {
        [self secOneCreateSetStr:str];
        [self layoutSubviews];
    }
    return self;
}

- (instancetype)initWithSecTwoSetString:(NSString *)str
                  setUnderStr:(NSString *)uStr
{
    self = [super init];
    if (self) {
        [self secTwoCreateSetStr:str
                     setUnderStr:uStr];
        [self layoutSubviews];
    }
    return self;
}

- (instancetype)initWithSecThreeSetString:(NSString *)str
{
    self = [super init];
    if (self) {
        [self secThreeCreateSetStr:str];
        [self layoutSubviews];
    }
    return self;
}


- (instancetype)initWithSecFourSetIndex:(NSInteger)index
                       setStr:(NSString *)str
{
    self = [super init];
    if (self) {
        [self secfourCreateSetIndex:index setStr:str];
        [self layoutSubviews];
    }
    return self;
}

- (void)layoutSubviews{
    [self secOneFrame];
    [self secTwoFrame];
    [self secThreeFrame];
    [self secFourFrame];
    
}

- (void)secOneCreateSetStr:(NSString *)str
{
    UIView *bgView = [[UIView alloc] init];
    [self addSubview:bgView];
    
    UIView *mainView = [[UIView alloc]init];
    [bgView addSubview:mainView];
    
    
    UILabel *mainLabel = [[UILabel alloc] init];
    [mainView addSubview:mainLabel];
    
    UILabel *rightSymbolLabel = [[UILabel alloc] init];
    [mainView addSubview:rightSymbolLabel];
    
    bgView.backgroundColor = [UIColor lightGrayColor];
    mainView.backgroundColor = [UIColor whiteColor];
    
    mainLabel.text = str;
    mainLabel.textColor = [UIColor blackColor];
    mainLabel.font = [UIFont boldSystemFontOfSize:13.0];
    mainLabel.textAlignment = NSTextAlignmentLeft;
    
    
    rightSymbolLabel.text = @">";
    rightSymbolLabel.textColor = [UIColor redColor];
    rightSymbolLabel.font = [UIFont systemFontOfSize:10.0];
    rightSymbolLabel.textAlignment = NSTextAlignmentRight;
    
    self.bgView = bgView;
    self.mainView = mainView;
    self.mainLabel = mainLabel;
    self.rightSymbolLabel = rightSymbolLabel;
}

- (void)secOneFrame{

    self.bgView.frame = self.bounds;

    CGFloat m = self.bgView.frame.size.width;
    CGFloat h = self.bgView.frame.size.height-1;
    
    self.mainView.frame =CGRectMake(0, 1, m, h);
    
    h = self.mainView.frame.size.height;
    
    self.mainLabel.frame = CGRectMake(0.027*m, 0, 0.7 * m, h);
    self.rightSymbolLabel.frame = CGRectMake(0.727*m, 0, 0.246 * m, h);
    
}



- (void)secTwoCreateSetStr:(NSString *)str
               setUnderStr:(NSString *)uStr{
    
    UIView *bgView = [[UIView alloc] init];
    [self addSubview:bgView];
    
    UIView *mainView = [[UIView alloc]init];
    [bgView addSubview:mainView];
    
    UILabel *mainLabel = [[UILabel alloc] init];
    [mainView addSubview:mainLabel];
    
    UILabel *underLabel = [[UILabel alloc] init];
    [mainView addSubview:underLabel];
    
    bgView.backgroundColor = [UIColor lightGrayColor];
    mainView.backgroundColor = [UIColor whiteColor];
    
    mainLabel.text = str;
    mainLabel.textColor = [UIColor blackColor];
    mainLabel.font = [UIFont boldSystemFontOfSize:12.0];
    mainLabel.textAlignment = NSTextAlignmentLeft;
    
    underLabel.text = uStr;
    underLabel.textColor = [UIColor lightGrayColor];
    underLabel.font = [UIFont systemFontOfSize:7.0];
    underLabel.textAlignment = NSTextAlignmentLeft;
    
    
    self.bgView = bgView;
    self.mainView = mainView;
    self.mainLabel = mainLabel;
    self.underLabel = underLabel;
    
}

- (void)secTwoFrame{
    
    self.bgView.frame = self.bounds;
    
    CGFloat m = self.bgView.frame.size.width;
    CGFloat h = self.bgView.frame.size.height-1;
    
    self.mainView.frame =CGRectMake(0, 1, m, h);
    
    h = self.mainView.frame.size.height;
    
    self.mainLabel.frame = CGRectMake(0.027*m, h/3, 0.73 * m, (h/3)*2/3);
    self.underLabel.frame = CGRectMake(0.027*m, h*2/3, 0.73 * m, (h/3)/3);
    
}


- (void)secThreeCreateSetStr:(NSString *)str
{
    UIView *bgView = [[UIView alloc] init];
    [self addSubview:bgView];
    
    UIView *mainView = [[UIView alloc]init];
    [bgView addSubview:mainView];
    
    UILabel *mainLabel = [[UILabel alloc] init];
    [mainView addSubview:mainLabel];
    
    UISwitch *rightSwitch = [[UISwitch alloc] init];
    [mainView addSubview:rightSwitch];
    
    bgView.backgroundColor = [UIColor lightGrayColor];
    mainView.backgroundColor = [UIColor whiteColor];
    
    mainLabel.text = str;
    mainLabel.textColor = [UIColor blackColor];
    mainLabel.font = [UIFont boldSystemFontOfSize:12.0];
    mainLabel.textAlignment = NSTextAlignmentLeft;
    
    self.bgView = bgView;
    self.mainView = mainView;
    self.mainLabel = mainLabel;
    self.rightSwitch = rightSwitch;
    [rightSwitch addTarget:self action:@selector(switchAction:) forControlEvents:UIControlEventTouchUpInside];
}


- (void)secThreeFrame{
    
    self.bgView.frame = self.bounds;
    
    CGFloat m = self.bgView.frame.size.width;
    CGFloat h = self.bgView.frame.size.height-1;
    
    self.mainView.frame =CGRectMake(0, 1, m, h);
    
    h = self.mainView.frame.size.height;
    
    self.mainLabel.frame = CGRectMake(0.027*m, 0, 0.7 * m, h);
    self.rightSwitch.frame = CGRectMake(0.808*m, h/3, 0.192 * m, h/3);
    
    
}



- (void)secfourCreateSetIndex:(NSInteger)index
                       setStr:(NSString *)str
{
    UIView *bgView = [[UIView alloc] init];
    [self addSubview:bgView];
    
    UIView *mainView = [[UIView alloc]init];
    [bgView addSubview:mainView];
    
    
    UILabel *mainLabel = [[UILabel alloc] init];
    [mainView addSubview:mainLabel];
    
    self.bgView = bgView;
    self.mainView = mainView;
    self.mainLabel = mainLabel;
    
    if (index == 2) {
        UISwitch *rightSwitch = [[UISwitch alloc] init];
        [mainView addSubview:rightSwitch];
        self.rightSwitch = rightSwitch;
        [rightSwitch addTarget:self action:@selector(switchAction:) forControlEvents:UIControlEventTouchUpInside];
        
    } else {
        
        UILabel *rightLabel = [[UILabel alloc] init];
        [mainView addSubview:rightLabel];
        
        UILabel *rightSymbolLabel = [[UILabel alloc] init];
        [mainView addSubview:rightSymbolLabel];
        rightLabel.textColor = [UIColor lightGrayColor];
        rightLabel.font = [UIFont systemFontOfSize:13.0];
        rightLabel.contentMode = NSTextAlignmentRight;
        
        rightSymbolLabel.text = @">";
        rightSymbolLabel.textColor = [UIColor redColor];
        rightSymbolLabel.font = [UIFont systemFontOfSize:10.0];
        rightSymbolLabel.textAlignment = NSTextAlignmentRight;
        
        self.rightLabel = rightLabel;
        self.rightSymbolLabel = rightSymbolLabel;
    }
    
    bgView.backgroundColor = [UIColor lightGrayColor];
    mainView.backgroundColor = [UIColor whiteColor];
    
    mainLabel.text = str;
    mainLabel.textColor = [UIColor blackColor];
    mainLabel.font = [UIFont boldSystemFontOfSize:13.0];
    mainLabel.textAlignment = NSTextAlignmentLeft;
    

}


- (void)secFourFrame{
    
    self.bgView.frame = self.bounds;
    
    CGFloat m = self.bgView.frame.size.width;
    CGFloat h = self.bgView.frame.size.height-1;
    
    self.mainView.frame =CGRectMake(0, 1, m, h);
    
    h = self.mainView.frame.size.height;
    
    self.mainLabel.frame = CGRectMake(0.027*m, 0, 0.65 * m, h);
    
    self.rightLabel.frame = CGRectMake(0.677*m, 0, 0.24*m, h);
    
    self.rightSymbolLabel.frame = CGRectMake(0.917*m, 0, 0.053 * m, h);
    
    self.rightSwitch.frame = CGRectMake(0.808*m, h/3, 0.192 * m, h/3);
    
}


- (void)distanceUnit{
    
    self.rightLabel.text = [[NSUserDefaults standardUserDefaults] objectForKey:@"distanceUnit"];
    
}


- (void)temperature{
    self.rightLabel.text = [[NSUserDefaults standardUserDefaults] objectForKey:@"temperature"];
}

- (void)switchAction:(UISwitch *)sender {
    
    
    [self.delegate action:self.indecPath];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
