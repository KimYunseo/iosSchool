//
//  ViewController.m
//  GCDPractice
//
//  Created by abyssinaong on 2017. 3. 14..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic,weak) IBOutlet UILabel *numberLabel;
@property (nonatomic) NSInteger i;
@property dispatch_source_t mainTimer;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //dispatch_source 생성
//    self.timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, dispatch_get_main_queue());
    
    
}

- (void)startThread{
    /*********************스탑워치 만들기!******************************/
    if (!self.mainTimer) {
        self.mainTimer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, dispatch_get_main_queue());
        
        dispatch_source_set_timer(self.mainTimer, DISPATCH_TIME_NOW, NSEC_PER_SEC * 1,NSEC_PER_SEC * 1);
        dispatch_source_set_event_handler(self.mainTimer, ^{
            [self.numberLabel setText:[NSString stringWithFormat:@"%ld", self.i]];
            NSLog(@"%ld", self.i);
            self.i += 1;
        });
    }
    
    dispatch_resume(self.mainTimer); //dispatch 정지
    /*********************버튼 click하면 label이 바뀌는 것 -> dispatch 만들기******************************/
    //    self.queue = dispatch_queue_create("queue name", DISPATCH_QUEUE_CONCURRENT);
    //    dispatch_async(self.queue, ^{
    //        for (self.i = 0; self.i<100; self.i++) {
    //            dispatch_sync(dispatch_get_main_queue(), ^{
    //                [self.numberLabel setText:[NSString stringWithFormat:@"%ld", self.i]];
    //            });
    
    //        }
    //    });
    
    
    
    /*********************버튼 click하면 label이 바뀌는 것 -> NSThread 만들기******************************/
    //    NSInteger i = 0;
    //    while (!self.thread.isCancelled) {
    //        sleep(1);
    //        [self performSelectorOnMainThread:@selector(changeText:) withObject:[NSString stringWithFormat:@"%ld",i] waitUntilDone:YES];
    //        i += 1;
    //    }
    
    //    for (NSInteger i=0; i<50; i++) {
    //        sleep(1);
    //    }
    
}

- (void)changeText:(NSString *) str{
    
    [self.numberLabel setText:str];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
