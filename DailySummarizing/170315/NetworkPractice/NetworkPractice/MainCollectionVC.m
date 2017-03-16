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

@interface MainCollectionVC ()
<UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UICollectionViewDataSourcePrefetching>
@property (weak, nonatomic) IBOutlet UICollectionView *mainCollectioView;
@property NSInteger tempCount;

@end

@implementation MainCollectionVC


- (void)viewWillAppear:(BOOL)animated{
    
//     self.tempCount = [DataCenter shareData].imgUrlArray.count;
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.mainCollectioView registerNib:[UINib nibWithNibName:@"MainCollectionViewCell" bundle:[NSBundle mainBundle]] forCellWithReuseIdentifier:@"MainCollectionViewCell"];
    // Do any additional setup after loading the view.
    
//     NSLog(@"%@",[DataCenter shareData].imageArray) ;
//     NSLog(@"%@",[DataCenter shareData].imageSizeArray) ;
    [self addNotification];
    
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    NSLog(@"self.tempCount %ld", [DataCenter shareData].imgUrlArray.count);
    return [DataCenter shareData].imgUrlArray.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    MainCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"MainCollectionViewCell" forIndexPath:indexPath];

    if ([DataCenter shareData].widthArray.count < [DataCenter shareData].imgUrlArray.count) {
        cell.mainImg.image = [UIImage imageNamed:@"free.jpg"];
    } else {
        UIImage *image = [DataCenter shareData].imageArray[indexPath.row];
        
        if (image) {

            cell.mainImg.image = [[DataCenter shareData] imageArray][indexPath.row];
 
        } else {
            cell.mainImg.image = [UIImage imageNamed:@"free.jpg"];
        }
    }
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    if ([DataCenter shareData].widthArray.count < [DataCenter shareData].imgUrlArray.count) {
        UIImage *image = [UIImage imageNamed:@"free.jpg"];
        CGFloat width = image.size.width;
        CGFloat height = image.size.height;
        CGFloat m = (self.mainCollectioView.frame.size.width-10)/2;
        CGFloat ratio = height/width;
        return CGSizeMake(m , m * ratio);
    } else {
            CGFloat width = [[DataCenter shareData].widthArray[indexPath.row] floatValue];
            CGFloat height = [[DataCenter shareData].heightArray[indexPath.row] floatValue];
            CGFloat m = (self.mainCollectioView.frame.size.width-10)/2;
            CGFloat ratio = height/width;
        return CGSizeMake(m , m * ratio);
    }
    
    
}

- (void)addNotification{
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(notiAction:) name:@"imageDown" object:nil];
    
}

- (void)notiAction:(NSNotification *)sender{
    
    [self.mainCollectioView reloadData];
    NSLog(@"노티 실행됐다.");
    
}



- (void)collectionView:(UICollectionView *)collectionView prefetchItemsAtIndexPaths:(NSArray<NSIndexPath *> *)indexPaths{
    
//    [self.mainCollectioView reloadData];
    
}

- (void)dealloc{
    
    [[NSNotificationCenter defaultCenter] removeObserver:@"imageDown"];
    
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
