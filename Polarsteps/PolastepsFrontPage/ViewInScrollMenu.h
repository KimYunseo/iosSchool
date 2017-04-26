//
//  ViewInScrollMenu.h
//  PolastepsFrontPage
//
//  Created by abyssinaong on 2017. 2. 21..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewInScrollMenu : UIView

- (instancetype)initWithFrame:(CGRect)frame ejectLine:(BOOL)eLine;

- (void)setImage:(NSString *)imgName
        setCount:(NSString *)count
           setLB:(NSString *)lbStr;

@end
