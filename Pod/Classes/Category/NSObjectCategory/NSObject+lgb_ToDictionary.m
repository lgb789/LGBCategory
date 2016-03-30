//
//  NSObject+lgb_ToDictionary.m
//  ios no model design
//
//  Created by lgb789 on 16/3/30.
//  Copyright © 2016年 com.lgb. All rights reserved.
//

#import "NSObject+lgb_ToDictionary.h"
#import <objc/runtime.h>

@implementation NSObject (lgb_ToDictionary)

-(id)lgb_ToDictionary
{
    return [self lgb_ObjToDictionary:self];
}

-(id)lgb_ObjToDictionary:(id)obj
{
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    unsigned int outCount = 0;
    objc_property_t *propertyList = class_copyPropertyList([obj class], &outCount);
    for (int i = 0; i < outCount; i++) {
        objc_property_t property = propertyList[i];
        const char *name = property_getName(property);
        NSString *propertyName = [NSString stringWithUTF8String:name];
        id value = [obj valueForKey:propertyName];
        if (value == nil) {
            value = [NSNull null];
        }else{
            value = [self getInternalObj:value];
        }
        [dic setObject:value forKey:propertyName];
    }
    free(propertyList);
    return dic;
}

-(id)getInternalObj:(id)obj
{
    if ([obj isKindOfClass:[NSString class]]
        || [obj isKindOfClass:[NSNumber class]]
        || [obj isKindOfClass:[NSNull class]]) {
        return obj;
    }
    
    if ([obj isKindOfClass:[NSArray class]]) {
        NSArray *arry = obj;
        NSMutableArray *tmpArray = [NSMutableArray array];
        for (int i = 0; i < arry.count; i++) {
            [tmpArray setObject:[self getInternalObj:arry[i]] atIndexedSubscript:i];
        }
        return tmpArray;
    }
    
    if ([obj isKindOfClass:[NSDictionary class]]) {
        NSDictionary *objDic = obj;
        NSMutableDictionary *dic = [NSMutableDictionary dictionary];
        for (NSString *key in objDic.allKeys) {
            id o = [self getInternalObj:[objDic objectForKey:key]];
            [dic setObject:o forKey:key];
        }
        return dic;
    }
    
    return [self lgb_ObjToDictionary:obj];
}

@end
