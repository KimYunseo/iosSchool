//
//  CustomView.m
//  AutolaoutGachaPratice01
//
//  Created by abyssinaong on 2017. 3. 1..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "CustomView.h"
@interface CustomView()




@end

@implementation CustomView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

/*
 스토리보드는 initWithCoder를 이용하여 초기화 한다.
*/
-(instancetype)initWithCoder:(NSCoder *)aDecoder {
    
    self = [super initWithCoder:aDecoder];
    
    NSLog(@"layout subviews 보다 먼저 호출");
    
    return self;
}


- (void)hoho{
    NSLog(@"dsfa");
}


//hp버튼을 눌렀을 때 행동하는 메소드
- (IBAction)hpValuePlus:(id)sender{
    
    NSInteger point = [[DataCenter shareData].point integerValue];
    
    if (point != 0) {
        
        NSInteger current = [self.hpLB.text integerValue];
        current += 1;
        self.hpLB.text = [NSString stringWithFormat:@"%lu", current];
        
        point -= 1;
        
        [[DataCenter shareData] pointSave:[NSString stringWithFormat:@"%lu", point]];
        
        [self.deldgate minusPoint];
        
    }
}


//메인 imageView에 사진을 랜덤으로 넣기 위한 메소드
- (void)mainImgRandom{
    NSLog(@"image");
    
    NSArray *imageName = @[@"cubeMoa.jpg",@"diabllo.jpg",@"jupiter.jpg",@"kalcas.jpg",@"panteaon.jpg",@"tanatos.jpg",@"midas.png",@"tot.jpg",@"aten.jpg",@"pennil.jpg"];
    int num = (int)imageName.count-1;
    int randomNum = arc4random_uniform(num);
    NSInteger number = randomNum;
    
    self.mainImg.image = [UIImage imageNamed:imageName[number]];
}

//str 버튼을 눌렀을 때 행동하는 메소드
- (IBAction)strValuePlus:(id)sender{
    
    NSInteger point = [[DataCenter shareData].point integerValue];
    
    if (point != 0) {
        
        NSInteger current = [self.strLB.text integerValue];
        
        current += 1;
        
        self.strLB.text = [NSString stringWithFormat:@"%lu", current];
        
        point -= 1;
        
        [[DataCenter shareData] pointSave:[NSString stringWithFormat:@"%lu", point]];
        [self.deldgate minusPoint];
        
    }
}

- (void)layoutSubviews{
    
    NSLog(@"initWithCoder 보다 늦게 호출");
//    [self mainImgRandom];
}

//def 버튼을 눌렀을 행동하는 메소드
- (IBAction)defValuePlus:(id)sender{
    
    NSInteger point = [[DataCenter shareData].point integerValue];
    
    if (point != 0) {
        
        NSInteger current = [self.defLB.text integerValue];
        
        current += 1;
        
        self.defLB.text = [NSString stringWithFormat:@"%lu", current];
        point -= 1;
        
        [[DataCenter shareData] pointSave:[NSString stringWithFormat:@"%lu", point]];
        [self.deldgate minusPoint];
        
    }
    
}

//story board는 awakeFromNib메소드를 호출하며 initailize한다. 따라서 해당 imageView에 이미지를 삽입하는 시기는 이때가 적절하다고 판단한다.
//http://szulctomasz.com/2015/08/21/ios-initialization-process-of-a-view-loaded-from-a-storyboard.html 참고
- (void)awakeFromNib{
    [super awakeFromNib];
    [self mainImgRandom];
    
}

@end
