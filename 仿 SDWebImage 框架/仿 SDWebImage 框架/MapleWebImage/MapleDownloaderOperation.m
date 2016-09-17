//
//  MapleDownloaderOperation.m
//  仿 SDWebImage 框架
//
//  Created by 张清美 on 16/9/17.
//  Copyright © 2016年 张清美. All rights reserved.
//
/*
 
自定义 downloaderoperation 的作用
 1,异步下载网络图片:图片地址
 2,使用 block 把图片数据传递到 VC
 
 */

#import "MapleDownloaderOperation.h"

@implementation MapleDownloaderOperation
//任何操作在执行之前都会调用 main 方法:一旦队列调度操作执行,首先自动执行 start 方法 然后调用 main 方法
//重写 main 方法:所有操作的入口(相当于教室的门)
-(void)main{
    
    
    

    NSLog(@"%@",[NSThread currentThread]);
    
    NSLog(@"%@",self.urlString);
    
    NSURL * url = [NSURL URLWithString:self.urlString];
    
    
    NSData * data = [NSData dataWithContentsOfURL:url];
    
    UIImage * image = [UIImage imageWithData:data];//默认在异步线程中执行
    
    
    
    //判断并执行 block
    if (self.successBlock != nil ) {
        
        //回到主线程,回调 VC 传入的代码块
        [[NSOperationQueue mainQueue]addOperationWithBlock:^{
            
            //提示:BLOCK 和 代理和通知 ,在哪个线程回调 block 发送代理消息/发送通知,那么就在哪个线程执行相对应的方法
            self.successBlock(image);
            
        }];
        
     
        
    }
    
    
    
    
    
    


}

@end
