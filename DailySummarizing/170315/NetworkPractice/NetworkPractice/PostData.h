//
//  PostData.h
//  NetworkPractice
//
//  Created by abyssinaong on 2017. 3. 19..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface PostData : NSObject


@property NSString *userName;
@property NSString *title;
@property NSString *contentText;
@property NSString *mainImage;


- (instancetype)initWithPost:(NSDictionary *)post;


@end
