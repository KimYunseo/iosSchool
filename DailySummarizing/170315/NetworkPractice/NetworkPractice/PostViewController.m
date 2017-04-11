//
//  PostViewController.m
//  NetworkPractice
//
//  Created by abyssinaong on 2017. 3. 20..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "PostViewController.h"
#import "MainCollectionVC.h"
#import "DataCenter.h"
#import "PostData.h"

@interface PostViewController ()

@end

@implementation PostViewController

- (instancetype)initDataCompliton:(void(^)(void))complition
{
    self = [super init];
    if (self) {
        
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSLog(@"%@", self.index);
    
    self.view.backgroundColor = [UIColor whiteColor];
    PostData *postData = [[DataCenter shareData].postDataArray objectAtIndex:self.index.row];
    
    self.userName.text = postData.userName;
    self.mainContent.text = postData.contentText;
    if([postData.mainImage isEqual:[NSNull null]]) {
        dispatch_async(dispatch_get_main_queue(), ^{
            self.mainImage.image = [UIImage imageNamed:@"free.jpg"];
        });
        
    } else {
        
        NSURL *imgURL = [NSURL URLWithString:postData.mainImage];
        NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
        NSURLSessionTask *task = [session dataTaskWithURL:imgURL completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
            if(data) {
                dispatch_async(dispatch_get_main_queue(), ^{
                    self.mainImage.image = [UIImage imageWithData:data];
                });
            }
        }];
        [task resume];
    }

}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
