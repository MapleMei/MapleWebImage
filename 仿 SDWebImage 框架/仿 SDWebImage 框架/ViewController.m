//
//  ViewController.m
//  仿 SDWebImage 框架
//
//  Created by 张清美 on 16/9/17.
//  Copyright © 2016年 张清美. All rights reserved.
//

#import "ViewController.h"
#import  "MapleDownloaderOperation.h"

@interface ViewController ()

@property(nonatomic,strong)NSOperationQueue * queue;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //创建自定义的操作对象
    
    
    self.queue = [[NSOperationQueue alloc]init];
    
    
    //把自定义的操作对象添加到队列
    
    MapleDownloaderOperation * op = [[MapleDownloaderOperation alloc]init];
    //把图片的地址传递给 op
    
    op.urlString = @"http://pic49.nipic.com/file/20140928/4949133_154705706000_2.jpg";
    
    //把下载完成之后刷新 UI 的代码块传递给 op
    
    //定义执行的代码块
//    void(^successBlock)() = ^(UIImage * image){
//    
//    
//        NSLog(@"%@,,,,%@",image,[NSThread currentThread]);
//    
//    
//    };
//
    
//    op.successBlock =successBlock;
    
    //调用 block
    [op setSuccessBlock:^(UIImage *image) {
        
         NSLog(@"%@,,,,%@",image,[NSThread currentThread]);
    }];
    //添加到队列
    
    [self.queue addOperation:op];
    
    
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
