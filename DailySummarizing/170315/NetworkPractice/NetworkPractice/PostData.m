//
//  PostData.m
//  NetworkPractice
//
//  Created by abyssinaong on 2017. 3. 19..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "PostData.h"

@implementation PostData

- (instancetype)initWithPost:(NSDictionary *)post
{
    self = [super init];
    if (self) {
        
        self.userName = [[post objectForKey:@"author"] objectForKey:@"username"];
        self.title = [post objectForKey:@"title"];
        self.contentText = [post objectForKey:@"content"];
        self.mainImage = [post objectForKey:@"img_cover"];
        
    }
    return self;
}


@end
