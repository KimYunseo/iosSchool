//
//  ViewController.m
//  CrawlingExample01
//
//  Created by abyssinaong on 2017. 3. 4..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    NSString *url = @"http://www.daum.net/";
    [self getSiteHtml];

}
- (void)getSiteHtml
{
    NSURLSession *session = NSURLSession.sharedSession;
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:@"https://www.stackoverflow.com"]
                                            completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
                                                NSString *htmlString = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
                                                NSLog(@"http string: %@", htmlString);
                                            }];
    [dataTask resume];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
