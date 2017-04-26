//
//  ViewInMainImage.m
//  PolastepsFrontPage
//
//  Created by abyssinaong on 2017. 2. 22..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewInMainImage.h"
#import "DataCenter.h"

@interface ViewInMainImage()

//@property (nonatomic, weak) UIImageView *backImg;

@property (nonatomic, weak) UIImageView *ratingImg;
@property (nonatomic, weak) UILabel *nameLB;
@property (nonatomic, weak) UILabel *followerLB;
@property (nonatomic, weak) UILabel *followingLB;
@property (nonatomic, weak) UIVisualEffectView *blurEffectView;

@end

@implementation ViewInMainImage

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self mainViewCreate];
        [self frameSetting];
        [self colorAndLayerSetting];
        self.contentMode = UIViewContentModeScaleAspectFit;
    }
    return self;
}

- (void)mainViewCreate{
   
    if (!UIAccessibilityIsReduceTransparencyEnabled()) {
        UIBlurEffect *blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleRegular];
        UIVisualEffectView *blurEffectView = [[UIVisualEffectView alloc] initWithEffect:blurEffect];
        blurEffectView.frame = self.bounds;
        self.blurEffectView = blurEffectView;
        
        [self addSubview:self.blurEffectView];
    }
    
    UIImageView *profileImg = [[UIImageView alloc]init];
    [self addSubview:profileImg];
    self.profileImg = profileImg;
    
    UIImageView *ratingImg = [[UIImageView alloc] init];
    [self addSubview:ratingImg];
    self.ratingImg = ratingImg;
    
    UILabel *nameLB = [[UILabel alloc] init];
    [self addSubview:nameLB];
    self.nameLB = nameLB;
    
    UILabel *followerLB = [[UILabel alloc] init];
    [self addSubview:followerLB];
    self.followerLB = followerLB;
    
    
    UILabel *followingLB = [[UILabel alloc] init];
    [self addSubview:followingLB];
    self.followingLB = followingLB;
    
}

- (void)frameSetting{
    
    CGFloat m = self.frame.size.width;
    CGFloat h = self.frame.size.height;
    
    self.profileImg.frame = CGRectMake(0.38*m, 0.07*h, 0.24*m, 0.24*m);
    self.ratingImg.frame = CGRectMake(0.56*m, h*0.01, 0.12*m, 0.12*m);
    self.nameLB.frame = CGRectMake(0, 0.38*h, m, 0.06*h);
    self.nameLB.font = [UIFont boldSystemFontOfSize:0.12*m/2];
    
    self.followerLB.frame = CGRectMake(0.17*m, 0.8*h, 0.31*m, 0.1*h);
    self.followerLB.font = [UIFont systemFontOfSize:0.1*h*2/5];
    
    self.followingLB.frame = CGRectMake(0.52*m, 0.8*h, 0.31*m, 0.1*h);
    self.followingLB.font = [UIFont systemFontOfSize:0.1*h*2/5];
    
}

- (void)colorAndLayerSetting{
    CGFloat m = self.frame.size.width;
    self.profileImg.clipsToBounds = YES;
    self.profileImg.layer.cornerRadius = 0.24*m/2;
    
    self.ratingImg.backgroundColor = [UIColor clearColor];
    self.ratingImg.alpha = 1;
    
    
    self.nameLB.textColor = [UIColor whiteColor];
    self.nameLB.backgroundColor = [UIColor clearColor];
    
    self.followerLB.textColor = [UIColor whiteColor];
    self.followerLB.backgroundColor = [UIColor clearColor];
    self.followerLB.layer.borderWidth = 1;
    self.followerLB.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.followerLB.layer.cornerRadius = 5.0;
    
    self.followingLB.textColor = [UIColor whiteColor];
    self.followingLB.backgroundColor = [UIColor clearColor];
    self.followingLB.layer.borderWidth = 1;
    self.followingLB.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.followingLB.layer.cornerRadius = 5.0;
}

//- (void)setMainImage:(NSString *)img
//      setRatingImage:(NSString *)rating
//             setName:(NSString *)name
//          setFollower:(NSString *)follower
//        setFollowing:(NSString *)following
//{
//    
//    UIImage *image = [[UIImage alloc] init];
//    image = [UIImage imageNamed:img];
//    
//    CGFloat m = self.frame.size.width;
//    
//    CGRect rect = CGRectMake(0,0,m*3,m*3);
//    UIGraphicsBeginImageContext( rect.size );
//    [image drawInRect:rect];
//    UIImage *picture1 = UIGraphicsGetImageFromCurrentImageContext();
//    UIGraphicsEndImageContext();
//    
//    NSData *imageData = UIImagePNGRepresentation(picture1);
//    self.image =[UIImage imageWithData:imageData];
//    self.contentMode = UIViewContentModeScaleAspectFill;
//    
//    self.profileImg.image = [UIImage imageNamed:img];
//    
//    self.ratingImg.image = [UIImage imageNamed:rating];
//    
//    self.nameLB.text = name;
//    self.nameLB.textAlignment = NSTextAlignmentCenter;
//    
//    self.followerLB.text = [NSString stringWithFormat:@"%@ followers", follower];
//    self.followerLB.textAlignment = NSTextAlignmentCenter;
//    
//    self.followingLB.text = [NSString stringWithFormat:@"%@ following", following];
//    self.followingLB.textAlignment = NSTextAlignmentCenter;
//    
//}


- (void)profileDataCenterImageChange{
    UIImage *image = [[UIImage alloc] init];

    image = [DataCenter sharedInstance].profileImage;
   
    CGFloat m = self.frame.size.width;
    
    CGRect rect = CGRectMake(0,0,m*3,m*3);
    UIGraphicsBeginImageContext( rect.size );
    [image drawInRect:rect];
    UIImage *picture1 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    NSData *imageData = UIImagePNGRepresentation(picture1);
    self.image =[UIImage imageWithData:imageData];
    self.contentMode = UIViewContentModeRedraw;
    
    self.profileImg.image = image;
    
    self.ratingImg.image = [UIImage imageNamed:@"point"];
    
    NSInteger followerNum = 1;
    
    self.followerLB.text = [NSString stringWithFormat:@"%lu followers", followerNum];
    self.followerLB.textAlignment = NSTextAlignmentCenter;
    
    NSInteger followingNum = 1;
    
    self.followingLB.text =[NSString stringWithFormat:@"%lu following", followingNum];
    self.followingLB.textAlignment = NSTextAlignmentCenter;
    
    self.profileImg.userInteractionEnabled = YES;
    
    
    NSString *temp = [[DataCenter sharedInstance].firstName stringByAppendingString:@" "];
    self.nameLB.text = [temp stringByAppendingString:[DataCenter sharedInstance].lastName];
    self.nameLB.textAlignment = NSTextAlignmentCenter;
    
//    [self frameSetting];

}

+ (void)addObserverForProfileImage{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(profileImageNoti:) name:@"profileChange" object:nil];
}

- (void)profileImageNoti:(NSNotification *)noti{
    [self isImageChangeNoti];
}

- (void)isImageChangeNoti{
    
    UIImage *image = [[UIImage alloc] init];

    image = [DataCenter sharedInstance].profileImage;
    
    CGFloat m = self.frame.size.width;
    
    CGRect rect = CGRectMake(0,0,m*3,m*3);
    UIGraphicsBeginImageContext( rect.size );
    [image drawInRect:rect];
    UIImage *picture1 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    NSData *imageData = UIImagePNGRepresentation(picture1);
    self.image =[UIImage imageWithData:imageData];
    self.contentMode = UIViewContentModeRedraw;
    
    self.profileImg.image = image;
    self.profileImg.userInteractionEnabled = YES;

    NSString *temp = [[DataCenter sharedInstance].firstName stringByAppendingString:@" "];
    self.nameLB.text = [temp stringByAppendingString:[DataCenter sharedInstance].lastName];
    self.nameLB.textAlignment = NSTextAlignmentCenter;
    NSLog(@"ViewInMainImage 에서 isImageChangeNoti 실행");
    
}

-(void)dealloc{
    NSLog(@"ViewInMainImage 에서 Noti removed 실행됨");
    [[NSNotificationCenter defaultCenter] removeObserver:@"profileChange"];
    
}
//+ (void)addObserverForFirstName{
//    [NSNotificationCenter.defaultCenter addObserver:self selector:@selector(isfirstNameChangeNoti:) name:@"firstName" object:nil];
//}
//
//- (void)isfirstNameChangeNoti:(NSNotification *)noti{
//    self.nameLB.text = noti.object;
//    [[NSUserDefaults  standardUserDefaults] setObject:self.nameLB.text forKey:@"firstName"];
//    self.nameLB.textAlignment = NSTextAlignmentCenter;
//    
//}

@end
