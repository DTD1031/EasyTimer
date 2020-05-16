//
//  NSTimerObject.h
//  EasyNSTimer
//
//  Created by LechengChen on 2020/5/12.
//  Copyright © 2020 CLC. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CLCTimerObject : NSObject

@property (nonatomic, weak) NSObject *target;
@property (nonatomic, weak) NSTimer *myTimer;

@end

NS_ASSUME_NONNULL_END
