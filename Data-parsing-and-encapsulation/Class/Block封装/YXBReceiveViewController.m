//
//  YXBReceiveViewController.m
//  Data-parsing-and-encapsulation
//
//  Created by kpkj-ios on 15/7/20.
//  Copyright (c) 2015年 kpkj-ios. All rights reserved.
//

#import "YXBReceiveViewController.h"
#import "YXBSendViewController.h"
@interface YXBReceiveViewController ()

@end

@implementation YXBReceiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //打点调用发送至的block的方法，获取发送者的数据
    YXBSendViewController *yxbSendVC=[[YXBSendViewController alloc]init];
    yxbSendVC.block=^(NSString *str){
    
        NSLog(@"%@",str);
    
        
        
    
    };
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
