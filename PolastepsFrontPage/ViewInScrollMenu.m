//
//  ViewInScrollMenu.m
//  PolastepsFrontPage
//
//  Created by abyssinaong on 2017. 2. 21..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewInScrollMenu.h"

@interface ViewInScrollMenu()

@property (nonatomic, weak) UIImageView *mainViewImg;
@property (nonatomic, weak) UILabel *mainViewCountLB;
@property (nonatomic, weak) UILabel *mainViewLB;
@property (nonatomic, weak) UIView *line;

@end

@implementation ViewInScrollMenu


- (instancetype)initWithFrame:(CGRect)frame ejectLine:(BOOL)eLine
{
    self = [super initWithFrame:frame];
    if (self) {
        
        [self viewInScrollAndEjectLine:eLine];
        [self viewFrame];
        self.backgroundColor = [UIColor colorWithRed:25/255.0 green:35/255.0 blue:45/255.0 alpha:1.0];
    }
    return self;
}

- (void)viewInScrollAndEjectLine:(BOOL)eLine{

    UIImageView *mainViewImg = [[UIImageView alloc] init];
    [self addSubview:mainViewImg];
    self.mainViewImg = mainViewImg;
    
    UILabel *mainViewCountLB = [[UILabel alloc] init];
    [self addSubview:mainViewCountLB];
    self.mainViewCountLB = mainViewCountLB;
    
    UILabel *mainViewLB = [[UILabel alloc] init];
    [self addSubview:mainViewLB];
    self.mainViewLB =mainViewLB;
    
    
    UIView *line = [[UIView alloc] init];
    if (eLine == NO) [self addSubview:line];
    self.line = line;
    
}

- (void)viewFrame{
    
    CGFloat m = self.frame.size.width;
    CGFloat h = m/2;
    
    self.mainViewImg.frame = CGRectMake(m/3, 0.3*h, m/3, 0.7*h);
//    [self.mainViewImg setBackgroundColor:[UIColor yellowColor]];
    
    self.mainViewCountLB.frame = CGRectMake(0, 1.1*h, m, 0.3*h);
//    [self.mainViewCountLB setBackgroundColor:[UIColor blueColor]];
    self.mainViewCountLB.font = [UIFont boldSystemFontOfSize:0.3*h];
    
    self.mainViewLB.frame = CGRectMake(0, m - 0.5*h, m, 0.25*h);
//    [self.mainViewLB setBackgroundColor:[UIColor orangeColor]];
    self.mainViewLB.font = [UIFont systemFontOfSize:0.25*h*6/7];
    
    self.line.frame = CGRectMake(m - 1, 20, 1, m - 40);
    [self.line setBackgroundColor:[UIColor lightGrayColor]];
}


- (void)setImage:(NSString *)imgName
        setCount:(NSString *)count
           setLB:(NSString *)lbStr
{
    
    self.mainViewImg.image = [UIImage imageNamed:imgName];
    
    self.mainViewCountLB.text = count;
    self.mainViewCountLB.textColor = [UIColor whiteColor];
    self.mainViewCountLB.textAlignment = NSTextAlignmentCenter;
    
    self.mainViewLB.text = lbStr;
    self.mainViewLB.textColor = [UIColor lightGrayColor];
    self.mainViewLB.textAlignment = NSTextAlignmentCenter;
    
}


@end
