//
//  YXBModel.h
//  Data-parsing-and-encapsulation
//
//  Created by kpkj-ios on 15/7/21.
//  Copyright (c) 2015年 kpkj-ios. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YXBAdvertises.h"
#import "YXBTopuser.h"

@interface YXBModel : NSObject
@property (nonatomic,retain) YXBAdvertises *advertisesY;
@property (nonatomic,strong)NSArray *advertises;
@property (nonatomic,copy)NSString *location;
@property (nonatomic,copy)NSString *photo;
@property (nonatomic,assign) int ID;
@property (nonatomic,retain) YXBTopuser *topuserY;
@property (nonatomic,strong)NSArray *topuser;
+(NSDictionary *)objectClassInArray;

@end
