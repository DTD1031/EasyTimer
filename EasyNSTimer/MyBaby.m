//
//  MyBaby.m
//  EasyNSTimer
//
//  Created by LechengChen on 2020/5/12.
//  Copyright © 2020 CLC. All rights reserved.
//

#import "MyBaby.h"
#import "NSTimer+Easy.h"

@interface MyBaby ()

@property (nonatomic, strong) NSTimer *timerInObject;

@end
@implementation MyBaby

- (void)dealloc {
    NSLog(@"baby dealloc");
}

- (void)startTimer {

    self.timerInObject = [NSTimer clc_scheduledTimerWithTimeInterval:1 target:self selector:@selector(printHello) userInfo:@"" repeats:YES];
}

- (void)printHello {
    
    NSLog(@"hello timer");
}

@end
