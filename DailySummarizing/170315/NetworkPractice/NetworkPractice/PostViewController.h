//
//  PostViewController.h
//  NetworkPractice
//
//  Created by abyssinaong on 2017. 3. 20..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PostViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *mainImage;
@property (weak, nonatomic) IBOutlet UILabel *userName;
@property (weak, nonatomic) IBOutlet UILabel *titleLB;
@property (strong, nonatomic) IBOutlet UILabel *mainContent;
@property NSIndexPath *index;

- (instancetype)initDataCompliton:(void(^)(void))complition;

@end
