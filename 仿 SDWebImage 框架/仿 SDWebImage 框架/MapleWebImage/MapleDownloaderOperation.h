//
//  MapleDownloaderOperation.h
//  仿 SDWebImage 框架
//
//  Created by 张清美 on 16/9/17.
//  Copyright © 2016年 张清美. All rights reserved.
//自定义 nsoperation 具备NSOperation 所有的一些特性,包括使用步骤

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface MapleDownloaderOperation : NSOperation

//接收 VC 传入的图片地址
@property(nonatomic,copy)NSString * urlString;

///接收 VC 传入的下载完成的代码块 需要将 Image 传递出去 交给主线程刷新 UI
@property(nonatomic,copy)void(^successBlock)(UIImage * image);

@end
