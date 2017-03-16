//
//  DataCenter.h
//  NetworkPractice
//
//  Created by abyssinaong on 2017. 3. 15..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface DataCenter : NSObject

@property (readonly) NSMutableArray *imageArray;
@property (readonly) NSMutableArray *imageSizeArray;


+ (instancetype)shareData;
- (void)collectionViewGetImage:(NSString *)imgUrl;
- (void)collectionViewGetImageSize;
@end
