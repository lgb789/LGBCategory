//
//  NSString+lgb_MD5.m
//  ios no model design
//
//  Created by lgb789 on 16/3/29.
//  Copyright © 2016年 com.lgb. All rights reserved.
//

#import "NSString+lgb_MD5.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (lgb_MD5)

-(NSString *)lgb_MD5
{
    const char *ptr = [self UTF8String];
    unsigned char md5Buffer[CC_MD5_DIGEST_LENGTH];
    CC_MD5(ptr, (unsigned int)strlen(ptr), md5Buffer);
    
    NSMutableString *output = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    for (int i = 0; i < CC_MD5_DIGEST_LENGTH; i++) {
        [output appendFormat:@"%02x", md5Buffer[i]];
    }
    return output;
}

@end
