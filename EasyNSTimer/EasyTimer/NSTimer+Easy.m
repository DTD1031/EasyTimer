//
//  NSTimer+Easy.m
//  EasyNSTimer
//
//  Created by LechengChen on 2020/5/12.
//  Copyright © 2020 CLC. All rights reserved.
//

#import "NSTimer+Easy.h"
#import "NSTimerObject.h"

@implementation NSTimer (Easy)

- (void)dealloc {
    NSLog(@"timer dealloc");
}

+ (NSTimer *)clc_scheduledTimerWithTimeInterval:(NSTimeInterval)ti target:(id)aTarget selector:(SEL)aSelector userInfo:(id)userInfo repeats:(BOOL)yesOrNo {
    
    NSTimerObject *obj = [[NSTimerObject alloc] init];
    obj.target = aTarget; //weak
    obj.myTimer = [NSTimer scheduledTimerWithTimeInterval:ti target:obj selector:aSelector userInfo:userInfo repeats:yesOrNo];

    return obj.myTimer;
}
@end
