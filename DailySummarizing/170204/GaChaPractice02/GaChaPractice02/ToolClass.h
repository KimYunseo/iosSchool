//
//  ToolClass.h
//  GaChaPractice02
//
//  Created by abyssinaong on 2017. 2. 5..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ToolClass : UIWindow

- (UIView *)createView;
//- (instancetype)initWithView;
+ (UIView *)subMainCreate;
+ (UIButton *)createButtonSetxNum:(CGFloat)numX yNum:(CGFloat)numY;
+ (UIImageView *)createImageView:(NSString *)imgName setX:(CGFloat)num setWidth:(CGFloat)width setHeight:(CGFloat)height;
+ (UILabel *)createLabelSetX:(CGFloat)xNum setY:(CGFloat)yNum selcMode:(NSUInteger)selc;

+ (UILabel *)topLabelSetX:(CGFloat)xNum setY:(CGFloat)yNum selcMode:(NSUInteger)selc;

+ (NSString *)randomCharctorName;


@end
