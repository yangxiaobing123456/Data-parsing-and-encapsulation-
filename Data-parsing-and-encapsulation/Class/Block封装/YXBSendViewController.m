//
//  YXBSendViewController.m
//  Data-parsing-and-encapsulation
//
//  Created by kpkj-ios on 15/7/20.
//  Copyright (c) 2015年 kpkj-ios. All rights reserved.
//

#import "YXBSendViewController.h"

@interface YXBSendViewController ()
- (IBAction)btn:(id)sender;

@end

@implementation YXBSendViewController

- (void)viewDidLoad {
    [super viewDidLoad];
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

- (IBAction)btn:(id)sender {
    //设定发送的地方和数据
    if (_block) {
        _block(@"发送消息");
    }
}
@end
