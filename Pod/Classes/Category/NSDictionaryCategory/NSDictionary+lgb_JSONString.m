//
//  NSDictionary+lgb_JSONString.m
//  ios no model design
//
//  Created by lgb789 on 16/3/29.
//  Copyright © 2016年 com.lgb. All rights reserved.
//

#import "NSDictionary+lgb_JSONString.h"

@implementation NSDictionary (lgb_JSONString)

-(NSString *)lgb_JSONString
{
    NSError *error = nil;
    NSData *data = [NSJSONSerialization dataWithJSONObject:self options:NSJSONWritingPrettyPrinted error:&error];
    
    NSString *string = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    
    return string;
}

@end
