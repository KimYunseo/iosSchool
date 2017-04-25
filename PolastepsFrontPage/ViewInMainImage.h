//
//  ViewInMainImage.h
//  PolastepsFrontPage
//
//  Created by abyssinaong on 2017. 2. 22..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewInMainImage : UIImageView

@property (nonatomic, weak) UIImageView *profileImg;
//
//- (void)setMainImage:(NSString *)img
//      setRatingImage:(NSString *)rating
//             setName:(NSString *)name
//         setFollower:(NSString *)follower
//        setFollowing:(NSString *)following;


- (void)profileDataCenterImageChange;
+ (void)addObserverForProfileImage;

- (void)isImageChangeNoti;

//+ (void)addObserverForFirstName;
@end
