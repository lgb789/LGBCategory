//
//  NSString+lgb_Path.m
//  ios no model design
//
//  Created by lgb789 on 16/3/29.
//  Copyright © 2016年 com.lgb. All rights reserved.
//

#import "NSString+lgb_Path.h"

@implementation NSString (lgb_Path)

+(NSString *)lgb_LibPathWithFile:(NSString *)file
{
    return [[NSString lgb_LibraryPath] stringByAppendingPathComponent:file];
}

+(NSString *)lgb_LibraryPath
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES);
    return [paths firstObject];
}

@end
