//
//  ViewController.m
//  PolastepsFrontPage
//
//  Created by abyssinaong on 2017. 2. 20..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewController.h"
#import "CustomHeaderView.h"
#import "SettingViewController.h"
#import "ViewInMainImage.h"
#import "CustomFootterView.h"
#import "CreateNewViewController.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource, CustomFootterViewDelegate>

@property (nonatomic, weak) UITableView *mainTable;
@property (nonatomic, weak) CustomHeaderView *headerView;
//@property (nonatomic, weak) UITableViewController *tableViewController;
@property (nonatomic, weak) CustomFootterView *footerView;
@property NSArray *array;


@end

@implementation ViewController

- (void)viewWillAppear:(BOOL)animated{
    NSLog(@"viewWillAppear!!!!!!");
    [self.mainTable reloadData];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];

    NSArray *array = @[];
    self.array =array;
    
    UIButton *settingBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [settingBtn setImage: [UIImage imageNamed:@"settings-icon3"] forState:UIControlStateNormal];
    settingBtn.frame = CGRectMake(0, 0, 15, 15);
    [settingBtn addTarget:self action:@selector(settingViewPresent:) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *left =[[UIBarButtonItem alloc] initWithCustomView:settingBtn];
    
    
    self.navigationItem.title = @"polasteps" ;
    self.navigationItem.leftBarButtonItem = left;
    
    
    CGFloat m = self.view.frame.size.width;
    CGFloat h = self.view.frame.size.height;
    //-49
    CGRect mainRect = CGRectMake(0, 0, m, h);
    
    UITableView *mainTable = [[UITableView alloc] initWithFrame:mainRect style:UITableViewStyleGrouped];
    [self.view addSubview:mainTable];
    mainTable.backgroundColor = [UIColor lightGrayColor];
    mainTable.delegate = self;
    mainTable.dataSource = self;
    self.mainTable = mainTable;
    
    UIRefreshControl *refreshControl = [[UIRefreshControl alloc] init];
    refreshControl.tintColor = [UIColor lightGrayColor];
    refreshControl.attributedTitle = [[NSAttributedString alloc] initWithString:@"Pull to Refresh"];
    [self.mainTable addSubview:refreshControl];
    [refreshControl addTarget:self action:@selector(refreshData) forControlEvents:UIControlEventValueChanged];
    
    
    UITableViewController *tableViewController = [[UITableViewController alloc] init];
    tableViewController.tableView = self.mainTable;
    tableViewController.refreshControl = refreshControl;
//    self.tableViewController = tableViewController;
    
}

- (void)refreshData{
    
    UITableViewController *tableViewController = [[UITableViewController alloc] init];
    tableViewController.tableView = self.mainTable;
    [self.mainTable reloadData];
    [tableViewController.refreshControl endRefreshing];
    
}

- (void)settingViewPresent:(UIButton *)sender{
    
    SettingViewController *secondView = [self.storyboard instantiateViewControllerWithIdentifier:@"SettingViewController"];
    UINavigationController *settingNavi = [[UINavigationController alloc] initWithRootViewController:secondView];
    

    [self presentViewController:settingNavi animated:YES completion:nil];
    
}

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    CustomHeaderView *headerView = [[CustomHeaderView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height*0.64)];
    self.headerView = headerView;
    return headerView;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return self.view.frame.size.height*0.64;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    NSLog(@"%lu", self.array.count);
    if (self.array.count == 0) {
        return 0;
    } else {
        return self.array.count;
    }
    
//    return  1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    
    
    return cell;
}

- (void)presentVC{
    
    CreateNewViewController *footerView = [[CreateNewViewController alloc] init];
    
    UINavigationController *vc = [[UINavigationController alloc] initWithRootViewController:footerView];
    
    [self presentViewController:vc animated:YES completion:nil];
    
}

//- (void)addObserverForProfileImage{
//    
//    
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(reciveNoti:) name:@"profileChange" object:nil];
//    
//}


- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
//    if ([self.mainTable numberOfSections] == 0) {
//        return self.view.frame.size.height*0.39 - 40;
//    } else {
//        
//        return 50.0;
//    }
    
    
    if ([[tableView visibleCells] count] == 0 ) {
        return self.view.frame.size.height*0.185;
    } else {
        return 50;
    }
    
    
//    if([tableView numberOfSections] == 1) {
//        return self.view.frame.size.height*0.39 - 40;
//    } else {
//        return 50;
//    }
    
}

-  (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    
    NSLog(@"footerView %lu", [self.mainTable numberOfRowsInSection:0]);
    
//    [tableView numberOfSections] == 1
    if([[tableView visibleCells] count] == 0) {
        CustomFootterView *footerView = [[CustomFootterView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height*0.185) setStyle:0];
        self.footerView = footerView;
        footerView.delegate = self;
        return footerView;
    } else {
        CustomFootterView *footerView = [[CustomFootterView alloc] initWithFrame:CGRectMake(0, 0,self.view.frame.size.width ,50) setStyle:1];
        self.footerView = footerView;
        footerView.delegate = self;
        return footerView;
    }
}

- (void)reciveNoti:(NSNotification *)noti{
    if ([noti.object isEqualToString:@"change"]) {
        [ViewInMainImage addObserverForProfileImage];
    }
}




//- (void)dealloc
//{
//    
//    
//    NSLog(@"View Controller에서 Noti removed 실행됨");
//    [[NSNotificationCenter defaultCenter] removeObserver:@"profileChange"];
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
