//
//  CustomTableViewCell.h
//  TableViewHomework
//
//  Created by abyssinaong on 2017. 2. 19..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell

- (void)profileImageSetting:(NSString *)pImage setMainImg:(NSString *)mImg;

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier;

- (void)textInsertSetName:(NSString *)name
                setNation:(NSString *)nation
                 setTitle:(NSString *)title
                  setYear:(NSString *)year
                 setMonth:(NSString *)month
             setTotalDays:(NSString *)days
             setKilometer:(NSString *)kilometer
                 setSteps:(NSString *)steps
               setExplain:(NSString *)explain;

@end
