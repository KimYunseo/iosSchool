//
//  MyView.m
//  BlockViewEample
//
//  Created by abyssinaong on 2017. 3. 10..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "MyView.h"



@interface MyView()


@property (weak, nonatomic) IBOutlet UIButton *btn;
@property (weak, nonatomic) IBOutlet UILabel *lbel;

@property NameBloc textBloc;
@property testBloc str;



@end
@implementation MyView

- (void)changeLabelText:(NameBloc)prar{
    
    self.textBloc = prar;
    
}

- (void)testBloc:(testBloc)para{
    
    self.str = para;
    
}

- (IBAction)actionBtn:(id)sender{
    
    self.lbel.text = self.str(@"ghh");
    
}


@end
