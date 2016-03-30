//
//  LGBModel.m
//  LGBCategory
//
//  Created by lgb789 on 16/3/30.
//  Copyright © 2016年 lgb789. All rights reserved.
//

#import "LGBModel.h"
#import "NSObject+lgb_Coding.h"

@implementation LGBModel

#pragma mark - *********************** public methods ***********************

#pragma mark - *********************** life cycle ***********************

#pragma mark - *********************** delegate ***********************

#pragma mark - *********************** event response ***********************

#pragma mark - *********************** private methods ***********************

-(instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    if (self) {
        [self lgb_InitWithCoder:aDecoder];
    }
    return self;
}

-(void)encodeWithCoder:(NSCoder *)aCoder
{
    [self lgb_EncodeWithCoder:aCoder];
}

#pragma mark - *********************** getters and setters ***********************

@end
