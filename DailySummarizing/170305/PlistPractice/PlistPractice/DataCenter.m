//
//  DataCenter.m
//  PlistPractice
//
//  Created by abyssinaong on 2017. 3. 5..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "DataCenter.h"


NSString * const PLIST_NAME = @"Sample.plist";
NSString * const ROOT_KEY_USERINFO = @"userInfo";
NSString * const USERINFO_KEY_ID = @"id";
NSString * const USERINFO_KEY_PASSWORD = @"Password";

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

//Plist를 Document로 복사
- (void)copyPlistInDocument{
    
    NSArray *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *basePath = [path objectAtIndex:0];
    NSString *docuPath = [basePath stringByAppendingPathComponent:PLIST_NAME];
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    
    if (![fileManager fileExistsAtPath:docuPath]) {
        NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"Sample" ofType:@"plist"];
        [fileManager copyItemAtPath:bundlePath toPath:docuPath error:nil];
    }
}

//Document에 복사된 Plist에서 dictionary를 self.rootDic에 넣어 준다.
- (void)rootDictionaryCopy{
    
    NSArray *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *basePath = [path objectAtIndex:0];
    NSString *docuPath = [basePath stringByAppendingPathComponent:PLIST_NAME];
    
    NSMutableDictionary *temp = [[NSMutableDictionary alloc]init];
    temp =  [NSMutableDictionary dictionaryWithContentsOfFile:docuPath];
    
    self.rootDic = temp;
}

//self.rootDic에서 ROOT_KEY_USERINFO(userInfo)키에 해당되는 array를 가져온다.
- (void)userInfoCopyInArray{
    
    NSMutableArray *userInfo = [[NSMutableArray alloc]init];
    userInfo = [self.rootDic objectForKey:ROOT_KEY_USERINFO];
    self.userInfo =userInfo;
    
}

//아이디와 패스워드를 저장하는 메소드
- (void)saveID:(NSString *)idText
        savePW:(NSString *)pwText{
    
    NSMutableDictionary *temp = [[NSMutableDictionary alloc] init];
    
    [temp setObject:idText forKey:USERINFO_KEY_ID];
    [temp setObject:pwText forKey:USERINFO_KEY_PASSWORD];
    
    [self.userInfo addObject:temp];
    [self replaceUserInfo];
    [self savePlistInDocument];
    
}


//self.rootDic에 ROOT_KEY_USERINFO(userInfo)의 키로 self.userInfo 어래이를 넣어준다.
- (void)replaceUserInfo{

    [self.rootDic setObject:self.userInfo forKey:ROOT_KEY_USERINFO];
    
}

//self.rootDic를 Plist에 넣어준다.
- (void)savePlistInDocument{
    
    NSArray *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *basePath = [path objectAtIndex:0];
    NSString *docuPath = [basePath stringByAppendingPathComponent:PLIST_NAME];
    
    [self.rootDic writeToFile:docuPath atomically:YES];
    
}

//ID가 있는 여부를 확인해주는 메소드
- (BOOL)findID:(NSString *)idText{
    NSInteger i = 0;
    BOOL temp = nil;
    while (!temp) {
        temp = [[self.userInfo[i] objectForKey:USERINFO_KEY_ID] isEqualToString:idText];
        i += 1;
        if (i == self.userInfo.count && temp != YES) {
            temp = NO;
            break;
        }
    }
    
    return temp;
    
}

//ID와 그에 해당되는 PW가 일치해주는지 확인해주는 메소드
- (BOOL)findID:(NSString *)idText
        findPW:(NSString *)pwText
{
    
    NSInteger i = 0;
    BOOL temp = nil;
    while (!temp) {
        temp = [[self.userInfo[i] objectForKey:USERINFO_KEY_ID] isEqualToString:idText] && [[self.userInfo[i] objectForKey:USERINFO_KEY_PASSWORD] isEqualToString:pwText];
        i += 1;
        if (i == self.userInfo.count && temp != YES) {
            temp = NO;
            break;
        }
    }
    
    return temp;
}


@end
