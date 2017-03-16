//
//  DataCenter.m
//  NetworkPractice
//
//  Created by abyssinaong on 2017. 3. 15..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "DataCenter.h"

@interface DataCenter()
@property NSMutableArray *imgUrlArray;
@property NSMutableArray *imageArray;
@property NSMutableArray *imageSizeArray;

@end

@implementation DataCenter

+ (instancetype)shareData{
    static DataCenter *data;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        data = [[DataCenter alloc] init];
    });
    
    return data;
}


- (instancetype)init
{
    self = [super init];
    if (self) {
        [self exampleIMG];
        [self createImgData];
    }
    return self;
}


- (void)exampleIMG{
    
    NSArray *imgArray = @[@"http://cfile22.uf.tistory.com/image/2255BA3F57F7223C067FEA", @"https://pbs.twimg.com/media/Cw1DaDhVEAIRd1V.jpg", @"http://cfile1.uf.tistory.com/image/247EED375835AF020B479F", @"http://cfile1.uf.tistory.com/image/23051839586C6D1515AF2A", @"http://post.phinf.naver.net/MjAxNzAzMTNfMTk4/MDAxNDg5MzgyMjUwNTk5.x0xm5oB_MJpeZqxcix2fXUwQAQOOBCgG2KLZJRG2QCQg.GKaruvMn8abDupMMl6GRywdPmI8LAN9OTzqTnjF0s4Ig.JPEG/%EC%9D%B4%EB%8B%AC%EC%9D%98_%EC%86%8C%EB%85%80_1_3_(2).jpg?type=w1200",@"http://cfile22.uf.tistory.com/image/2255BA3F57F7223C067FEA", @"https://pbs.twimg.com/media/Cw1DaDhVEAIRd1V.jpg", @"http://cfile1.uf.tistory.com/image/247EED375835AF020B479F", @"http://cfile1.uf.tistory.com/image/23051839586C6D1515AF2A", @"http://post.phinf.naver.net/MjAxNzAzMTNfMTk4/MDAxNDg5MzgyMjUwNTk5.x0xm5oB_MJpeZqxcix2fXUwQAQOOBCgG2KLZJRG2QCQg.GKaruvMn8abDupMMl6GRywdPmI8LAN9OTzqTnjF0s4Ig.JPEG/%EC%9D%B4%EB%8B%AC%EC%9D%98_%EC%86%8C%EB%85%80_1_3_(2).jpg?type=w1200",@"http://cfile22.uf.tistory.com/image/2255BA3F57F7223C067FEA", @"https://pbs.twimg.com/media/Cw1DaDhVEAIRd1V.jpg", @"http://cfile1.uf.tistory.com/image/247EED375835AF020B479F", @"http://cfile1.uf.tistory.com/image/23051839586C6D1515AF2A", @"http://post.phinf.naver.net/MjAxNzAzMTNfMTk4/MDAxNDg5MzgyMjUwNTk5.x0xm5oB_MJpeZqxcix2fXUwQAQOOBCgG2KLZJRG2QCQg.GKaruvMn8abDupMMl6GRywdPmI8LAN9OTzqTnjF0s4Ig.JPEG/%EC%9D%B4%EB%8B%AC%EC%9D%98_%EC%86%8C%EB%85%80_1_3_(2).jpg?type=w1200"];
    
    self.imgUrlArray = [imgArray mutableCopy];
    
    NSLog(@"exampleIMG");
    
}

- (void)collectionViewGetImage:(NSString *)imgUrl {
    NSURL *imageUrl = [NSURL URLWithString:imgUrl];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    NSURLSessionTask *task = [session dataTaskWithURL:imageUrl completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
//        dispatch_async(dispatch_get_main_queue(), ^{
            if (data) {
                UIImage *image = [UIImage imageWithData:data];
//                NSLog(@"collectionViewGetImage task %@", image);
                [self.imageArray addObject:image];
                NSLog(@"collectionViewGetImage task %@", self.imageArray);
            } else {
                UIImage *image = [UIImage imageNamed:@"free.jpg"];
                [self.imageArray addObject:image];
            } 
//        });
        
        
    }];
    
    [task resume];
    
    NSLog(@"collectionViewGetImage");
}


- (void)createImgData{
    
    for (NSInteger i = 0; i < self.imgUrlArray.count; i++) {
        [self collectionViewGetImage:self.imgUrlArray[i]];
    }
    
    [self collectionViewGetImageSize];
    NSLog(@"createImgData");
}

- (void)collectionViewGetImageSize{
    
    if (self.imageArray.count > 0) {
        for (NSInteger i = 0; i < self.imageArray.count; i++) {
            UIImage *image = self.imageArray[i];
            //        CGSize imgSize = CGSizeMake(image.size.width, image.size.height);
            
            NSDictionary *dic = @{@"width":[NSNumber numberWithFloat:image.size.width], @"height":[NSNumber numberWithFloat:image.size.height]};
            [self.imageSizeArray addObject:dic];
        }
    }
    NSLog(@"collectionViewGetImageSize");
}


@end
