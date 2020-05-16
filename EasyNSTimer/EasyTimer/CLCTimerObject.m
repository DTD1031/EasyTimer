//
//  NSTimerObject.m
//  EasyNSTimer
//
//  Created by LechengChen on 2020/5/12.
//  Copyright © 2020 CLC. All rights reserved.
//

#import "CLCTimerObject.h"

@interface CLCTimerObject ()

@end

@implementation CLCTimerObject

- (void)dealloc {
    
    NSLog(@"timerOBJ dealloc");
}
//1.解决循环引用                 ☑️
//2.aTarget释放时自动invalidate  ☑️
//3.多个timer可以同时存在         ☑️

+ (BOOL)resolveInstanceMethod:(SEL)sel {
    NSLog(@"resolveInstanceMethod");
    return NO;
}

#pragma mark -
- (id)forwardingTargetForSelector:(SEL)aSelector {
    //target还没释放  --> 返回的是self.target对象
    //target被释放了  --> 返回的是nil，进入下一步消息转发
    NSLog(@"send to aTarget");
    return self.target;
}

#pragma mark -

- (NSMethodSignature *)methodSignatureForSelector:(SEL)selector {
    NSLog(@"return Signature");
    return [NSMethodSignature signatureWithObjCTypes:"v@:@@"]; //随便签，无所谓啦
}

- (void)forwardInvocation:(NSInvocation *)invocation {
    NSLog(@"call forwordInvocation");
    [self _invalidateTimer];
}

#pragma mark -
- (void)_invalidateTimer {
    NSLog(@"invalid timer");
    if (self.myTimer) {
        NSLog(@"true invalid timer");
        [self.myTimer invalidate];
        self.myTimer = nil;
    }
}

@end
