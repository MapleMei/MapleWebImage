//
//  MapleDownloaderOperation.m
//  仿 SDWebImage 框架
//
//  Created by 张清美 on 16/9/17.
//  Copyright © 2016年 张清美. All rights reserved.
//

#import "MapleDownloaderOperation.h"

@implementation MapleDownloaderOperation
//任何操作在执行之前都会调用 main 方法:一旦队列调度操作执行,首先自动执行 start 方法 然后调用 main 方法
//重写 main 方法:所有操作的入口(相当于教室的门)
-(void)main{

    NSLog(@"%@",[NSThread currentThread]);


}

@end
