//
//  ViewController.m
//  TableViewPractice03
//
//  Created by abyssinaong on 2017. 2. 16..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@property NSArray *imgArray;
@property NSArray *imageArray2;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    self.imgArray = @[@"/Users/siamenyan/Desktop/allcode/DailySummarizing/170216/TableViewPractice03/TableViewPractice03/imgmoum/aten.jpg",
                          @"/Users/siamenyan/Desktop/allcode/DailySummarizing/170216/TableViewPractice03/TableViewPractice03/imgmoum/cardBack.png",
                          @"/Users/siamenyan/Desktop/allcode/DailySummarizing/170216/TableViewPractice03/TableViewPractice03/imgmoum/cubeMoa.jpg",
                          @"/Users/siamenyan/Desktop/allcode/DailySummarizing/170216/TableViewPractice03/TableViewPractice03/imgmoum/diabllo.jpg",
                          @"/Users/siamenyan/Desktop/allcode/DailySummarizing/170216/TableViewPractice03/TableViewPractice03/imgmoum/gold.jpg",
                          @"/Users/siamenyan/Desktop/allcode/DailySummarizing/170216/TableViewPractice03/TableViewPractice03/imgmoum/heartbit.jpg",
                          @"/Users/siamenyan/Desktop/allcode/DailySummarizing/170216/TableViewPractice03/TableViewPractice03/imgmoum/jupiter.jpg",
                          @"/Users/siamenyan/Desktop/allcode/DailySummarizing/170216/TableViewPractice03/TableViewPractice03/imgmoum/kalcas.jpg",
                          @"/Users/siamenyan/Desktop/allcode/DailySummarizing/170216/TableViewPractice03/TableViewPractice03/imgmoum/midas.png",
                          @"/Users/siamenyan/Desktop/allcode/DailySummarizing/170216/TableViewPractice03/TableViewPractice03/imgmoum/panteaon.jpg",
                          @"/Users/siamenyan/Desktop/allcode/DailySummarizing/170216/TableViewPractice03/TableViewPractice03/imgmoum/pennil.jpg",
                          @"/Users/siamenyan/Desktop/allcode/DailySummarizing/170216/TableViewPractice03/TableViewPractice03/imgmoum/point.png",
                          @"/Users/siamenyan/Desktop/allcode/DailySummarizing/170216/TableViewPractice03/TableViewPractice03/imgmoum/tanatos.jpg",
                    @"/Users/siamenyan/Desktop/allcode/DailySummarizing/170216/TableViewPractice03/TableViewPractice03/imgmoum/tot.jpg"];
    
    NSLog(@"%lu",[self.imgArray[0] length]);
    
    UITableView *mainTV= [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    mainTV.delegate = self;
    mainTV.dataSource = self;
    [self.view addSubview:mainTV];
    
    // 폴더에 있는 jpg일을 차례대로 배열에 넣는다.
    self.imageArray2 = [[NSBundle mainBundle] pathsForResourcesOfType:@"jpg" inDirectory:@"imgmoum"];
//    NSLog(@"%@", self.imageArray2);
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.imageArray2.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellID"];
    
    if(cell == nil){
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cellID"];

    }
    
    
            cell.imageView.image = [UIImage imageNamed:[self.imgArray objectAtIndex:indexPath.row] ];
    cell.imageView.frame = CGRectMake(0, 0, cell.frame.size.width/12, cell.frame.size.height);
    
    cell.textLabel.text = [self.imgArray[indexPath.row] substringWithRange:NSMakeRange(105, [self.imgArray[indexPath.row] length]-105)];
    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
