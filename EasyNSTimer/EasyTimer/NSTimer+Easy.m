//
//  NSTimer+Easy.m
//  EasyNSTimer
//
//  Created by LechengChen on 2020/5/12.
//  Copyright © 2020 CLC. All rights reserved.
//

#import "NSTimer+Easy.h"
#import "CLCTimerObject.h"

@implementation NSTimer (Easy)

- (void)dealloc {
    NSLog(@"timer dealloc");
}

+ (NSTimer *)clc_scheduledTimerWithTimeInterval:(NSTimeInterval)ti target:(id)aTarget selector:(SEL)aSelector userInfo:(id)userInfo repeats:(BOOL)yesOrNo {
    
    CLCTimerObject *obj = [[CLCTimerObject alloc] init];
    obj.target = aTarget; //weak
    obj.myTimer = [NSTimer scheduledTimerWithTimeInterval:ti target:obj selector:aSelector userInfo:userInfo repeats:yesOrNo];
    //timer 持有obj，obj弱引用aTarget，obj同时也负责处理aTarget释放时timer的invalidate
    return obj.myTimer;
}
@end
