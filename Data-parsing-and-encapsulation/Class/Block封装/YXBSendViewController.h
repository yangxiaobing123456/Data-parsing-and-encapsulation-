//
//  YXBSendViewController.h
//  Data-parsing-and-encapsulation
//
//  Created by kpkj-ios on 15/7/20.
//  Copyright (c) 2015年 kpkj-ios. All rights reserved.
//

#import <UIKit/UIKit.h>
//发送者定义一些block的属性
typedef void (^SendVCBlock)(NSString *str);
@interface YXBSendViewController : UIViewController
@property (nonatomic,strong)SendVCBlock block;
@end
