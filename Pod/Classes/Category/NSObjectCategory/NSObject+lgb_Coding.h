//
//  NSObject+lgb_Coding.h
//  ios no model design
//
//  Created by lgb789 on 16/3/30.
//  Copyright © 2016年 com.lgb. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (lgb_Coding)

-(void)lgb_InitWithCoder:(NSCoder *)aDecoder;

-(void)lgb_EncodeWithCoder:(NSCoder *)aCoder;

@end
