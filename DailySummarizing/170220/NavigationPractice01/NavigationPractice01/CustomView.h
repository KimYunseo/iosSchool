//
//  CustomView.h
//  NavigationPractice01
//
//  Created by abyssinaong on 2017. 2. 20..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomView : UIView

- (instancetype)initWithSelector:(SEL)onTouchSelector fromVC:(UIViewController *)vc;

@end
