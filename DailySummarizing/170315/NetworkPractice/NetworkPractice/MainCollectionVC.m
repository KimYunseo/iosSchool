//
//  MainCollectionVC.m
//  NetworkPractice
//
//  Created by abyssinaong on 2017. 3. 15..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "MainCollectionVC.h"
#import "MainCollectionViewCell.h"
#import "DataCenter.h"
#import "PostData.h"
#import "PostViewController.h"

@interface MainCollectionVC ()
<UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UICollectionViewDataSourcePrefetching>
@property (weak, nonatomic) IBOutlet UICollectionView *mainCollectioView;
@property NSInteger tempCount;

@end

@implementation MainCollectionVC


- (void)viewDidAppear:(BOOL)animated{
//    [self.mainCollectioView reloadData];
 }

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.mainCollectioView registerNib:[UINib nibWithNibName:@"MainCollectionViewCell" bundle:[NSBundle mainBundle]] forCellWithReuseIdentifier:@"MainCollectionViewCell"];
    
    [[DataCenter shareData] dataCenterSetContent];
    [self addNoti];

}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
//    [[DataCenter shareData] dataCenterSetContent];
    return [DataCenter shareData].postData.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    MainCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"MainCollectionViewCell" forIndexPath:indexPath];
    
    PostData *postData = [[DataCenter shareData].postData objectAtIndex:indexPath.row];
    cell.nameLB.text = postData.userName;
    cell.titleLB.text = postData.title;
    if([postData.mainImage isEqual:[NSNull null]]) {
        dispatch_async(dispatch_get_main_queue(), ^{
            cell.mainImg.image = [UIImage imageNamed:@"free.jpg"];
        });
        
    } else {
        
        NSURL *imgURL = [NSURL URLWithString:postData.mainImage];
        NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
        NSURLSessionTask *task = [session dataTaskWithURL:imgURL completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
            if(data) {
                dispatch_async(dispatch_get_main_queue(), ^{
                    cell.mainImg.image = [UIImage imageWithData:data];
                });
            }
        }];
        [task resume];
    }

    
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    CGFloat m = (self.mainCollectioView.frame.size.width-10)/2;
    CGFloat h = self.mainCollectioView.frame.size.height/2.5;
    return CGSizeMake(m, h);
}



- (void)collectionView:(UICollectionView *)collectionView prefetchItemsAtIndexPaths:(NSArray<NSIndexPath *> *)indexPaths{
    

    
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    
    [self performSegueWithIdentifier:@"PostSegue" sender:indexPath];
   
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if([segue.identifier isEqualToString:@"PostSegue"]) {
    // PostSegue에 연결된 viewcontroller를 가져 온다
        PostViewController *vc = [segue destinationViewController];
    // 프로퍼티인 index에 indexpath값을 넣어 준다.
        vc.index = (NSIndexPath *)sender;
    }
    
}

- (void)addNoti{
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(notiAction:) name:@"PostList" object:nil];
    NSLog(@"addNoti");
}

- (void)notiAction:(NSNotification *)sender{
    
    [self.mainCollectioView reloadData];
    
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
