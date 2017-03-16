//
//  ViewController.m
//  ImageDownloadPractice
//
//  Created by abyssinaong on 2017. 3. 15..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewController.h"
#import "CustomTableViewCell.h"

@interface ViewController ()
<UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (nonatomic) NSArray *imgArray;
@property (weak, nonatomic) IBOutlet UITableView *mainTB;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//           NSString *imgStr = @"";
    
    NSArray *imgArray = @[@"http://cfile22.uf.tistory.com/image/2255BA3F57F7223C067FEA", @"https://pbs.twimg.com/media/Cw1DaDhVEAIRd1V.jpg", @"http://cfile1.uf.tistory.com/image/247EED375835AF020B479F", @"http://cfile1.uf.tistory.com/image/23051839586C6D1515AF2A", @"http://post.phinf.naver.net/MjAxNzAzMTNfMTk4/MDAxNDg5MzgyMjUwNTk5.x0xm5oB_MJpeZqxcix2fXUwQAQOOBCgG2KLZJRG2QCQg.GKaruvMn8abDupMMl6GRywdPmI8LAN9OTzqTnjF0s4Ig.JPEG/%EC%9D%B4%EB%8B%AC%EC%9D%98_%EC%86%8C%EB%85%80_1_3_(2).jpg?type=w1200",@"http://cfile22.uf.tistory.com/image/2255BA3F57F7223C067FEA", @"https://pbs.twimg.com/media/Cw1DaDhVEAIRd1V.jpg", @"http://cfile1.uf.tistory.com/image/247EED375835AF020B479F", @"http://cfile1.uf.tistory.com/image/23051839586C6D1515AF2A", @"http://post.phinf.naver.net/MjAxNzAzMTNfMTk4/MDAxNDg5MzgyMjUwNTk5.x0xm5oB_MJpeZqxcix2fXUwQAQOOBCgG2KLZJRG2QCQg.GKaruvMn8abDupMMl6GRywdPmI8LAN9OTzqTnjF0s4Ig.JPEG/%EC%9D%B4%EB%8B%AC%EC%9D%98_%EC%86%8C%EB%85%80_1_3_(2).jpg?type=w1200",@"http://cfile22.uf.tistory.com/image/2255BA3F57F7223C067FEA", @"https://pbs.twimg.com/media/Cw1DaDhVEAIRd1V.jpg", @"http://cfile1.uf.tistory.com/image/247EED375835AF020B479F", @"http://cfile1.uf.tistory.com/image/23051839586C6D1515AF2A", @"http://post.phinf.naver.net/MjAxNzAzMTNfMTk4/MDAxNDg5MzgyMjUwNTk5.x0xm5oB_MJpeZqxcix2fXUwQAQOOBCgG2KLZJRG2QCQg.GKaruvMn8abDupMMl6GRywdPmI8LAN9OTzqTnjF0s4Ig.JPEG/%EC%9D%B4%EB%8B%AC%EC%9D%98_%EC%86%8C%EB%85%80_1_3_(2).jpg?type=w1200"];
    
    self.imgArray = imgArray;
//    self.imageView.image = [UIImage imageWithData:imgData];
    self.mainTB.delegate = self;
    self.mainTB.dataSource = self;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    
    return self.imgArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CustomTableViewCell" forIndexPath:indexPath];
    
    NSURL *imgURL = [NSURL URLWithString:self.imgArray[indexPath.row]];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    NSURLSessionTask *task = [session dataTaskWithURL:imgURL completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        if(data) {
            
            UIImage *image = [UIImage imageWithData:data];
            if (image) {
                
                dispatch_async(dispatch_get_main_queue(), ^{
                    cell.imgPro.image = image;
                });

            }
        }
        
    }];
    
    [task resume];
    
//    dispatch_queue_t global_queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
//    dispatch_async(global_queue, ^{
////        NSURL *imgUrl = [NSURL URLWithString:self.imgArray[indexPath.row]];
////        NSData *imgData = [NSData dataWithContentsOfURL:imgUrl];
//        
//        dispatch_async(dispatch_get_main_queue(), ^{
//            cell.imgPro.image = [UIImage imageWithData:imgData];
//        });
//        
//    });

    return cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//
@end
