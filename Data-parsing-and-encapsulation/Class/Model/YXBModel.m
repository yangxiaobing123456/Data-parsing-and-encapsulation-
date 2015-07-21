//
//  YXBModel.m
//  Data-parsing-and-encapsulation
//
//  Created by kpkj-ios on 15/7/21.
//  Copyright (c) 2015年 kpkj-ios. All rights reserved.
//

#import "YXBModel.h"
#import "YXBTopuser.h"
@implementation YXBModel
//-(void)setValue:(id)value forUndefinedKey:(NSString *)key{
//    
//    if ([key isEqualToString:@"id"]) {
//        [self setValue:value forKey:@"nid"];
//    }else if([key isEqualToString:@"description"]){
//        
////        self.nid=value;
//    }
//    
//}
+(NSDictionary *)objectClassInArray
{
    
    return @{@"topuser":[YXBTopuser class]};
    
    
}
@end
