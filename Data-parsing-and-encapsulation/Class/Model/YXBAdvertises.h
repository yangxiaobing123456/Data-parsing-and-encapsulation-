//
//  YXBAdvertises.h
//  Data-parsing-and-encapsulation
//
//  Created by kpkj-ios on 15/7/21.
//  Copyright (c) 2015年 kpkj-ios. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MJExtension.h"
@interface YXBAdvertises : NSObject<MJKeyValue>
@property (nonatomic,copy)NSString *location;
@property (nonatomic,copy)NSString *photo;
@property (nonatomic,assign) int ID;

@end
