//
//  ViewController.m
//  EasyNSTimer
//
//  Created by LechengChen on 2020/5/12.
//  Copyright © 2020 CLC. All rights reserved.
//

#import "ViewController.h"
#import "MyBaby.h"

@interface ViewController ()
@property (nonatomic, strong) NSTimer *myTimer;
@property (nonatomic, strong) MyBaby *baby;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createButtons];
    // Do any additional setup after loading the view.
}

- (void)createButtons {
    
    UIButton *startTimerButton = [[UIButton alloc] initWithFrame:CGRectMake(100, 200, 100, 50)];
    [startTimerButton setBackgroundColor:[UIColor whiteColor]];
    [startTimerButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [startTimerButton setTitle:@"start" forState:UIControlStateNormal];
    [self.view addSubview:startTimerButton];
    [startTimerButton addTarget:self action:@selector(createAndStartMyBaby) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *setNilButton = [[UIButton alloc] initWithFrame:CGRectMake(100, 400, 100, 50)];
    [setNilButton setBackgroundColor:[UIColor whiteColor]];
    [setNilButton setTitle:@"freeMyBaby" forState:UIControlStateNormal];
    [setNilButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:setNilButton];
    [setNilButton addTarget:self action:@selector(freeMyBaby) forControlEvents:UIControlEventTouchUpInside];
}

- (void)createAndStartMyBaby {
    
    self.baby = [[MyBaby alloc] init];
    [self.baby startTimer];
}

- (void)freeMyBaby {
    
    NSLog(@"========free my baby!!=======");
    self.baby = nil;
}

@end
