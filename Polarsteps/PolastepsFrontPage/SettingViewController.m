//
//  SettingViewController.m
//  PolastepsFrontPage
//
//  Created by abyssinaong on 2017. 2. 22..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "SettingViewController.h"
#import "SettingTableViewCell.h"
#import "ProfileViewController.h"
#import "DataCenter.h"

@interface SettingViewController ()<UITableViewDelegate, UITableViewDataSource, UIImagePickerControllerDelegate, UINavigationControllerDelegate, SettingTableViewCellDelegate>

@property NSArray *sec01Array;
@property NSArray *sec02Array;
@property (nonatomic, weak) SettingTableViewCell *cell;

@end

@implementation SettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *sec01Array = @[@"My profile", @"Account settings", @"Smart Notifications"];
    self.sec01Array = sec01Array;
    
    NSArray *sec02Array = @[@"Distance units", @"Temperature", @"Sync images over 3/4G"];
    self.sec02Array = sec02Array;
    
    // Do any additional setup after loading the view.
    UIButton *exitBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [exitBtn setTitle:@"X" forState:UIControlStateNormal];
    [exitBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    exitBtn.frame = CGRectMake(0, 0, 15, 15);
    [exitBtn addTarget:self action:@selector(viewDismissAction:) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *left = [[UIBarButtonItem alloc] initWithCustomView:exitBtn];
    self.navigationItem.leftBarButtonItem = left;
    self.navigationItem.title= @"Setting";
    
    UITableView *mainTable = [[UITableView alloc]initWithFrame:CGRectMake(0, -40, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStyleGrouped];
    mainTable.delegate = self;
    mainTable.dataSource = self;
    [self.view addSubview:mainTable];
    
}

- (void)viewDismissAction:(UIButton *)sender{
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 4;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    switch (section) {
        case 0:
            return 3;
            break;
        case 1:
            return 1;
            break;
            
        case 2:
            return 1;
            break;

        case 3:
            return 3;
            break;
        default:
            return 0;
            break;
    }
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 70;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
//    SettingTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellID"];
//    static NSString *cellID = @"cellID";
    SettingTableViewCell *cell = [SettingTableViewCell alloc];
        if (indexPath.section == 0) {
            cell = [cell initWithSecOneSetString:self.sec01Array[indexPath.row]];
            
        } else if (indexPath.section == 1) {
            cell = [cell initWithSecTwoSetString:@"Original resolution photo upload" setUnderStr:@"complete"];
        } else if (indexPath.section == 2) {
            
            cell = [cell initWithSecThreeSetString:@"Private account"];
            cell.indecPath = indexPath;
        } else if (indexPath.section == 3){
            
            cell = [cell initWithSecFourSetIndex:indexPath.row setStr:self.sec02Array[indexPath.row]];
            cell.indecPath = indexPath;
            if (indexPath.row == 0) {
                if([[[NSUserDefaults standardUserDefaults] objectForKey:@"distanceUnit"] isEqualToString:@"Kilometers"] || [[[NSUserDefaults standardUserDefaults] objectForKey:@"distanceUnit"]  isEqualToString:@"Miles"]){
                    [cell distanceUnit];
                } else {
                    [DataCenter sharedInstance].distanceUnit = @"Kilometers";
                    [[NSUserDefaults standardUserDefaults] setObject:[DataCenter sharedInstance].distanceUnit forKey:@"distanceUnit"];
                    [cell distanceUnit];
                }
                
            } else if (indexPath.row == 1) {
                if([[[NSUserDefaults standardUserDefaults] objectForKey:@"temperature"] isEqualToString:@"Celsius"] || [[[NSUserDefaults standardUserDefaults] objectForKey:@"temperature"] isEqualToString:@"Fahrenheit"]){
                    [cell temperature];
                } else {
                    [DataCenter sharedInstance].temperature = @"Celsius";
                    [[NSUserDefaults standardUserDefaults] setObject:[DataCenter sharedInstance].temperature forKey:@"temperature"];
                    [cell temperature];
                }
                
            }
            
           }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.delegate = self;
    self.cell = cell;
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            ProfileViewController *profileVC = [self.storyboard instantiateViewControllerWithIdentifier:@"ProfileViewController"];
            [self.navigationController pushViewController:profileVC animated:YES];
            
        }
    } else if (indexPath.section == 3) {
        if (indexPath.row == 0) {
            SettingTableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
            
            UIAlertController *alertController = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];
            
            UIAlertAction *kilometers = [UIAlertAction actionWithTitle:@"Kilometers" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                [DataCenter sharedInstance].distanceUnit = @"Kilometers";
                [[NSUserDefaults standardUserDefaults] setObject:[DataCenter sharedInstance].distanceUnit forKey:@"distanceUnit"];
                [cell distanceUnit];
            }];
            
            UIAlertAction *miles = [UIAlertAction actionWithTitle:@"Miles" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                [DataCenter sharedInstance].distanceUnit = @"Miles";
                [[NSUserDefaults standardUserDefaults] setObject:[DataCenter sharedInstance].distanceUnit forKey:@"distanceUnit"];
                [cell distanceUnit];
            }];
            
            [alertController addAction:kilometers];
            [alertController addAction:miles];
            
            [self presentViewController:alertController animated:YES completion:nil];
            
        } else if (indexPath.row == 1) {
            SettingTableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
            
            UIAlertController *alertController = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];
            
            UIAlertAction *celsius = [UIAlertAction actionWithTitle:@"Celsius" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                [DataCenter sharedInstance].temperature = @"Celsius";
                [[NSUserDefaults standardUserDefaults] setObject:[DataCenter sharedInstance].temperature forKey:@"temperature"];
                [cell temperature];
            }];
            
            UIAlertAction *fahrenheit = [UIAlertAction actionWithTitle:@"Fahrenheit" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                [DataCenter sharedInstance].temperature = @"Fahrenheit";
                [[NSUserDefaults standardUserDefaults] setObject:[DataCenter sharedInstance].temperature forKey:@"temperature"];
                [cell temperature];
            }];
            
            [alertController addAction:celsius];
            [alertController addAction:fahrenheit];
            
            [self presentViewController:alertController animated:YES completion:nil];
        }
    }
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{

    if (section == 2) {
        return @"ACCOUNT TYPE";
    } else if (section == 3){
        return @"APP SETTINGS";
    }
    else
    {
        return @"";
    }
    
}


- (nullable NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section{
    
    
    if (section == 1) {
        return @"Please keep Polarsteps open and your screen unlocked. This way we can upload the original version of your photos to our servers. After they are uploaded, the size of your app will be resuced and you'll be able to order a printed photo album of your trip (coming Fall 2016).";
    } else if (section == 2){
      return @"When your account is private, only people you approve can follow you and see your trips (unless you set a trip's privacy level to 'Everyone').";
    } else if (section == 3) {
        return @"Syncing images over 3/4G may use a lot of a data if you have large pictures.";
    }
    else
    {
        return @"";
    }
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    if (section == 0) {
        return 0;
    } else {
     return 20;
    }
}

- (void)action:(NSIndexPath *)index{
    
    NSLog(@"섹션%lu  로우%lu", index.section, index.row);
    
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
