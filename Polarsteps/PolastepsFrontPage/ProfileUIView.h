//
//  ProfileUIView.h
//  PolastepsFrontPage
//
//  Created by abyssinaong on 2017. 2. 22..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ProfileUIViewDelegate;

@interface ProfileUIView : UIView
@property (nonatomic, weak) UIImageView *picImag;
@property (nonatomic, weak) UITextField *firstTextView;
@property (nonatomic, weak)id <ProfileUIViewDelegate> delegate;
@property NSIndexPath *index;

- (instancetype)initWithPicFrame:(CGRect)frame;

- (instancetype)initWithNameFrame:(CGRect)frame
                         setTitle:(NSString *)str;

- (instancetype)initWithDetailFrame:(CGRect)frame;

- (void)picChange:(UIImage *)img;
- (void)firstNameSetting:(NSString *)text;
- (void)lastNameSetting:(NSString *)text;
- (void)hometownSetting:(NSString *)text;

@end

@protocol ProfileUIViewDelegate <NSObject>

- (void)takePhotoAction;
- (void)nameInitial:(ProfileUIView *)view;


@end
