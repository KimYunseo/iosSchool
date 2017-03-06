//
//  MyCuctomTableViewCell.h
//  TableViewPractice01
//
//  Created by abyssinaong on 2017. 2. 17..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyCuctomTableViewCell : UITableViewCell

- (void)setDataWithIMGName:(NSString *)imgUrlStr
                      name:(NSString *)nameStr
                       msg:(NSString *)msgStr;

- (void)updateLayout;
@end
