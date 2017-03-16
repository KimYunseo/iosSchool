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

@end

@implementation MainCollectionVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.mainCollectioView registerNib:[UINib nibWithNibName:@"MainCollectionViewCell" bundle:[NSBundle mainBundle]] forCellWithReuseIdentifier:@"MainCollectionViewCell"];
    // Do any additional setup after loading the view.
    
     NSLog(@"%@",[DataCenter shareData].imageArray) ;
     NSLog(@"%@",[DataCenter shareData].imageSizeArray) ;
    
    
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    return [DataCenter shareData].imageArray.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    MainCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"MainCollectionViewCell" forIndexPath:indexPath];
    
    cell.mainImg.image = [[DataCenter shareData] imageArray][indexPath.row];
    
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    
//    return CGSizeMake((self.mainCollectioView.frame.size.width-10)/2, self.mainCollectioView.frame.size.height/2.5);
    CGFloat width = [[[DataCenter shareData].imageSizeArray[indexPath.row] objectForKey:@"width"] floatValue];
    CGFloat height = [[[DataCenter shareData].imageSizeArray[indexPath.row] objectForKey:@"height"] floatValue];
    
    CGFloat ratio = height / width;
    CGFloat m = (self.mainCollectioView.frame.size.width-10)/2;
    
    return CGSizeMake(m , m * ratio);

}


- (void)collectionView:(UICollectionView *)collectionView prefetchItemsAtIndexPaths:(NSArray<NSIndexPath *> *)indexPaths{
    
    
    
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
