//
//  MyView.h
//  BlockViewEample
//
//  Created by abyssinaong on 2017. 3. 10..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NSString * (^NameBloc) (void);
typedef NSString * (^testBloc) (NSString *name);

@interface MyView : UIView

- (void)changeLabelText:(NameBloc)prar;

- (void)testBloc:(testBloc)para;


@end
