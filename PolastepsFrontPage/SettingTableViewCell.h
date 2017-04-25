//
//  SettingTableViewCell.h
//  PolastepsFrontPage
//
//  Created by abyssinaong on 2017. 2. 22..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SettingTableViewCellDelegate;
@interface SettingTableViewCell : UITableViewCell

@property (nonatomic, weak) id <SettingTableViewCellDelegate> delegate;
@property NSIndexPath *indecPath;
@property NSInteger num;

- (instancetype)initWithSecOneSetString:(NSString *)str;

- (instancetype)initWithSecTwoSetString:(NSString *)str
                            setUnderStr:(NSString *)uStr;


- (instancetype)initWithSecThreeSetString:(NSString *)str;


- (instancetype)initWithSecFourSetIndex:(NSInteger)index
                                 setStr:(NSString *)str;

- (void)distanceUnit;

- (void)temperature;

@end

@protocol SettingTableViewCellDelegate <NSObject>

- (void)action:(NSIndexPath *)index;

@end
