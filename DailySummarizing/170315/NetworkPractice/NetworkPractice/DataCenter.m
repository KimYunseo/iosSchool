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
@property NSArray *tempArray;
@property NSMutableArray *widthArray;
@property NSMutableArray *heightArray;
@property NetworkModule *network;

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
        self.network = [[NetworkModule alloc] init];
        self.imageArray = [[NSMutableArray alloc] init];
        self.imgUrlArray = [[NSMutableArray alloc] init];
        self.imageSizeArray = [[NSMutableArray alloc] init];
        self.widthArray = [[NSMutableArray alloc] init];
        self.heightArray = [[NSMutableArray alloc] init];
        [self exampleIMG];        
    }
    return self;
}


- (void)exampleIMG{
    
    NSArray *imgArray = @[@"http://cfile22.uf.tistory.com/image/2255BA3F57F7223C067FEA", @"https://pbs.twimg.com/media/Cw1DaDhVEAIRd1V.jpg", @"http://cfile1.uf.tistory.com/image/247EED375835AF020B479F", @"http://cfile1.uf.tistory.com/image/23051839586C6D1515AF2A", @"http://post.phinf.naver.net/MjAxNzAzMTNfMTk4/MDAxNDg5MzgyMjUwNTk5.x0xm5oB_MJpeZqxcix2fXUwQAQOOBCgG2KLZJRG2QCQg.GKaruvMn8abDupMMl6GRywdPmI8LAN9OTzqTnjF0s4Ig.JPEG/%EC%9D%B4%EB%8B%AC%EC%9D%98_%EC%86%8C%EB%85%80_1_3_(2).jpg?type=w1200",@"http://cfile22.uf.tistory.com/image/2255BA3F57F7223C067FEA", @"https://pbs.twimg.com/media/Cw1DaDhVEAIRd1V.jpg", @"http://cfile1.uf.tistory.com/image/247EED375835AF020B479F", @"http://cfile1.uf.tistory.com/image/23051839586C6D1515AF2A", @"http://post.phinf.naver.net/MjAxNzAzMTNfMTk4/MDAxNDg5MzgyMjUwNTk5.x0xm5oB_MJpeZqxcix2fXUwQAQOOBCgG2KLZJRG2QCQg.GKaruvMn8abDupMMl6GRywdPmI8LAN9OTzqTnjF0s4Ig.JPEG/%EC%9D%B4%EB%8B%AC%EC%9D%98_%EC%86%8C%EB%85%80_1_3_(2).jpg?type=w1200",@"http://cfile22.uf.tistory.com/image/2255BA3F57F7223C067FEA", @"https://pbs.twimg.com/media/Cw1DaDhVEAIRd1V.jpg", @"http://cfile1.uf.tistory.com/image/247EED375835AF020B479F", @"http://cfile1.uf.tistory.com/image/23051839586C6D1515AF2A", @"http://post.phinf.naver.net/MjAxNzAzMTNfMTk4/MDAxNDg5MzgyMjUwNTk5.x0xm5oB_MJpeZqxcix2fXUwQAQOOBCgG2KLZJRG2QCQg.GKaruvMn8abDupMMl6GRywdPmI8LAN9OTzqTnjF0s4Ig.JPEG/%EC%9D%B4%EB%8B%AC%EC%9D%98_%EC%86%8C%EB%85%80_1_3_(2).jpg?type=w1200"];
    
    self.imgUrlArray = [imgArray mutableCopy];
    
    NSLog(@"exampleIMG");
    [self createImgData];
}

- (void)collectionViewGetImage:(NSString *)imgUrl {
    NSURL *imageUrl = [NSURL URLWithString:imgUrl];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    NSURLSessionTask *task = [session dataTaskWithURL:imageUrl completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            if (data) {
                UIImage *image = [UIImage imageWithData:data];

                [self.imageArray addObject:image];
                NSString *width = [NSString stringWithFormat:@"%lf", image.size.width];
                [self.widthArray addObject:width];
                NSString *height = [NSString stringWithFormat:@"%lf", image.size.height];
                [self.heightArray addObject:height];
                
                NSLog(@"collectionViewGetImage task %@", self.imageArray);
            }
            [[NSNotificationCenter defaultCenter] postNotificationName:@"imageDown" object:@""];
            NSLog(@"노티 보냈다");
        });
    }];
    
    [task resume];
    
    NSLog(@"collectionViewGetImage");
}


- (void)createImgData{
    
    for (NSInteger i = 0; i < self.imgUrlArray.count; i++) {
        [self collectionViewGetImage:self.imgUrlArray[i]];
    }

}



- (void)loginSetName:(NSString *)username
         setPassword:(NSString *)password loginCompletion:(void(^)(BOOL isSuccess))completion
{
    [self.network loginSessionInsertUsername:username insertPassword:password loginCompletion:completion];
}


- (void)logoutSetCompletion:(void(^)(BOOL isSuccess))completion{
    
    [self.network logoutSessionSetCompletion:completion];
    
}

- (void)signupSessionInsertUsername:(NSString *)username
                    insertPassword1:(NSString *)password1
                     isertPassword2:(NSString *)password2
                    loginCompletion:(void(^)(BOOL isSuccess))completion{
    
    [self.network signupSessionInsertUsername:username insertPassword1:password1 isertPassword2:password2 loginCompletion:completion];
    
}

@end
