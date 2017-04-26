//
//  DataCenter.m
//  PolastepsFrontPage
//
//  Created by abyssinaong on 2017. 2. 23..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "DataCenter.h"
@interface DataCenter()

@property (nonatomic) NSString *firstName;
@property (nonatomic) NSString *lastName;
@property (nonatomic) NSString *hometown;;

@end

@implementation DataCenter



+ (instancetype)sharedInstance{
    
    static DataCenter *dataCenter = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        dataCenter = [[self alloc] init];
    });
    
    return dataCenter;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self initMore];
    }
    return self;
}


- (void)initMore{
    //프로필 이미지
    self.profileImage = [[UIImage alloc] init];
    
    
    
    
    if([[NSUserDefaults standardUserDefaults] objectForKey:@"profileImage"] != nil){
        
        self.profileImage = [UIImage imageWithData:[[NSUserDefaults standardUserDefaults] objectForKey:@"profileImage"]];
    } else {
        self.profileImage = [UIImage imageNamed:@"주작개구리.jpg"];
    }
    
    //프로필 이름
    if ([[NSUserDefaults standardUserDefaults] objectForKey:@"firstName"]) {
        self.firstName = [[NSUserDefaults standardUserDefaults] objectForKey:@"firstName"];
    } else {
        self.firstName = @"";
    }
    
    //프로필 성
    if ([[NSUserDefaults standardUserDefaults] objectForKey:@"lastName"]) {
        self.lastName = [[NSUserDefaults standardUserDefaults] objectForKey:@"lastName"];
    } else {
        self.lastName = @"";
    }
    
    
    if ([[NSUserDefaults standardUserDefaults] objectForKey:@"hometown"]) {
        self.hometown = [[NSUserDefaults standardUserDefaults] objectForKey:@"hometown"];
    } else {
        self.hometown = @"";
    }
}

-(void)imageSave:(NSData *)image {
    
    self.profileImage = [UIImage imageWithData:image];
    
    [[NSUserDefaults standardUserDefaults] setObject:image forKey:@"profileImage"];
    
    
}

- (void)firstNameSave:(NSString *)fName
{
    self.firstName = fName;
    [[NSUserDefaults standardUserDefaults] setObject:self.firstName forKey:@"firstName"];
    
}

- (void)lastNameSave:(NSString *)lName
{
    self.lastName = lName;
    [[NSUserDefaults standardUserDefaults] setObject:self.lastName forKey:@"lastName"];
    
}

- (void)hometownSave:(NSString *)hometown
{
    self.hometown = hometown;
    [[NSUserDefaults standardUserDefaults] setObject:self.hometown forKey:@"hometown"];
    
}





@end
