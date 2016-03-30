//
//  NSObject+lgb_Coding.m
//  ios no model design
//
//  Created by lgb789 on 16/3/30.
//  Copyright © 2016年 com.lgb. All rights reserved.
//

#import "NSObject+lgb_Coding.h"
#import "NSObject+lgb_ToDictionary.h"

@implementation NSObject (lgb_Coding)

-(void)lgb_InitWithCoder:(NSCoder *)aDecoder
{
    NSDictionary *dic = [aDecoder decodeObjectForKey:@"json"];
    [self setValuesForKeysWithDictionary:dic];
}

-(void)lgb_EncodeWithCoder:(NSCoder *)aCoder
{
    NSDictionary *dic = [self lgb_ToDictionary];
    [aCoder encodeObject:dic forKey:@"json"];
}

@end
