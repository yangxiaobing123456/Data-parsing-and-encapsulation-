//
//  ViewController.m
//  Data-parsing-and-encapsulation
//
//  Created by kpkj-ios on 15/7/20.
//  Copyright (c) 2015年 kpkj-ios. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    AFHTTPRequestOperationManager *mgr=[AFHTTPRequestOperationManager manager];
    
    [mgr GET:@"" parameters:nil success:^ (AFHTTPRequestOperation * operation, id responseObject) {
        
        
    } failure:^(AFHTTPRequestOperation * operation, NSError * error) {
        
    }];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
