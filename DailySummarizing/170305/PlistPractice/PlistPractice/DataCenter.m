//
//  DataCenter.m
//  PlistPractice
//
//  Created by abyssinaong on 2017. 3. 5..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "DataCenter.h"

@interface DataCenter()

@property NSMutableDictionary *rootDic;
@property NSMutableArray *userInfo;


@end

@implementation DataCenter

+ (instancetype)shareData{
    
    static DataCenter *data;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        data = [[DataCenter alloc] init];
    });
    
    return data;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self copyPlistInDocument];
        [self rootDictionaryCopy];
        [self userInfoCopyInArray];
    }
    return self;
}

- (void)copyPlistInDocument{
    
    NSArray *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *basePath = [path objectAtIndex:0];
    NSString *docuPath = [basePath stringByAppendingPathComponent:@"Sample.plist"];
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    
    if (![fileManager fileExistsAtPath:docuPath]) {
        NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"Sample" ofType:@"plist"];
        [fileManager copyItemAtPath:bundlePath toPath:docuPath error:nil];
    }
}

- (void)rootDictionaryCopy{
    
    NSArray *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *basePath = [path objectAtIndex:0];
    NSString *docuPath = [basePath stringByAppendingPathComponent:@"Sample.plist"];
    
    NSMutableDictionary *temp = [[NSMutableDictionary alloc]init];
    temp =  [NSMutableDictionary dictionaryWithContentsOfFile:docuPath];
    
    self.rootDic = temp;
}

- (void)userInfoCopyInArray{
    
    NSMutableArray *userInfo = [[NSMutableArray alloc]init];
    userInfo = [self.rootDic objectForKey:@"userInfo"];
    self.userInfo =userInfo;
    
}

- (void)saveID:(NSString *)idText
        savePW:(NSString *)pwText{
    
    NSMutableDictionary *temp = [[NSMutableDictionary alloc] init];
    
    [temp setObject:idText forKey:@"ID"];
    [temp setObject:pwText forKey:@"Password"];
    
    [self.userInfo addObject:temp];
    [self replaceUserInfo];
    [self savePlistInDocument];
    
}


- (void)replaceUserInfo{

    [self.rootDic setObject:self.userInfo forKey:@"userInfo"];
    
}


- (void)savePlistInDocument{
    
    NSArray *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *basePath = [path objectAtIndex:0];
    NSString *docuPath = [basePath stringByAppendingPathComponent:@"Sample.plist"];
    
    [self.rootDic writeToFile:docuPath atomically:YES];
    
}

- (BOOL)findID:(NSString *)idText{
    NSInteger i = 0;
    BOOL temp = nil;
    while (!temp) {
        temp = [[self.userInfo[i] objectForKey:@"ID"] isEqualToString:idText];
        i += 1;
        if (i == self.userInfo.count && temp != YES) {
            temp = NO;
            break;
        }
    }
    
    return temp;
    
}



- (BOOL)findID:(NSString *)idText
        findPW:(NSString *)pwText
{
    
    NSInteger i = 0;
    BOOL temp = nil;
    while (!temp) {
        temp = [[self.userInfo[i] objectForKey:@"ID"] isEqualToString:idText] && [[self.userInfo[i] objectForKey:@"Password"] isEqualToString:pwText];
        i += 1;
        if (i == self.userInfo.count && temp != YES) {
            temp = NO;
            break;
        }
    }
    
    return temp;
}


@end
