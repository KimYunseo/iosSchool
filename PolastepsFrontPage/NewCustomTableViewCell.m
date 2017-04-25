//
//  NewCustomTableViewCell.m
//  PolastepsFrontPage
//
//  Created by abyssinaong on 2017. 3. 2..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "NewCustomTableViewCell.h"

@interface NewCustomTableViewCell()

@property (nonatomic, weak) UIView *bottomView;
@property (nonatomic, weak) UIImageView *iconView;
@property (nonatomic, weak) UITextField *tripName;
@property (nonatomic, weak) UIDatePicker *datePick;
@property (nonatomic, weak) UILabel *trackerLB;
@property (nonatomic, weak) UISwitch *rightSwitch;

@end

@implementation NewCustomTableViewCell

//- (void)awakeFromNib {
//    [super awakeFromNib];
//    // Initialization code
//}
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}


- (void)createViewSection:(NSInteger)sNum
                   setRow:(NSInteger)rNum
{
    UIView *bottomView = [[UIView alloc] init];
    bottomView.backgroundColor = [UIColor whiteColor];
    [self addSubview:bottomView];
    self.bottomView = bottomView;
    
    UIImageView *iconView = [[UIImageView alloc] init];
    self.iconView = iconView;
    
    UITextField *tripName = [[UITextField alloc] init];
    self.tripName = tripName;
    
    UIDatePicker *datePick = [[UIDatePicker alloc] init];
    datePick.datePickerMode = UIDatePickerModeDate;
    self.datePick = datePick;
    
    
    UILabel *trackerLB = [[UILabel alloc] init];
    self.trackerLB = trackerLB;
    
    UISwitch *rightSwitch = [[UISwitch alloc]init];
    self.rightSwitch = rightSwitch;
    
    
    if (sNum == 0) {
        if (rNum == 0) {
            [bottomView addSubview:iconView];
            [bottomView addSubview:tripName];
        } else if (rNum == 1){
            [bottomView addSubview:iconView];
            [bottomView addSubview:datePick];
        } else {
            [bottomView addSubview:iconView];
            [bottomView addSubview:datePick];
        }
    } else if (sNum == 1){
        
        [bottomView addSubview:trackerLB];
        [bottomView addSubview:iconView];
        [bottomView addSubview:rightSwitch];
        
    }
    
}

- (void)frameSettingSection:(NSInteger)sNum
                     setRow:(NSInteger)rNum
{
    
    self.bottomView.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
    
    CGFloat m = self.bottomView.frame.size.width;
    CGFloat h = self.bottomView.frame.size.height;
    
    if (sNum == 0) {
        if (rNum == 0) {
            self.iconView.frame = CGRectMake(10, 0, 20, h);
        } else if (rNum == 1){

        } else {

        }
    } else if (sNum == 1){
        

    }
    
    
}




- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
