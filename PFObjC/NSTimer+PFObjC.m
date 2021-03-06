//
//  NSTimer+PFObjC.m
//  PFObjC
//
//  Created by PFei_He on 15/11/24.
//  Copyright © 2015年 PF-Lib. All rights reserved.
//
//  https://github.com/PFei-He/PFObjC
//
//  vesion: 0.2.2
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//
//  ***** NSTimer类目 *****
//

#import "NSTimer+PFObjC.h"

@implementation NSTimer (PFObjC)

//暂停计时器
- (void)pause
{
    //若计时器无效则返回
    if (![self isValid]) return;
    
    //设置计时器运行时间为未来时间，则暂停了计时器
    self.fireDate = [NSDate distantFuture];
}

//恢复计时器
- (void)resume
{
    //假如计时器无效则返回
    if (![self isValid]) return;
    
    //设置计时器运行时间为当前时间，则立即运行计时器
    self.fireDate = [NSDate date];
}

//指定时间间隔后恢复计时器
- (void)resumeAfterTimeInterval:(NSTimeInterval)timeInterval
{
    //假如计时器无效则返回
    if (![self isValid]) return;
    
    //设置计时器运行时间为指定的间隔时长
    self.fireDate = [NSDate dateWithTimeIntervalSinceNow:timeInterval];
}

@end
