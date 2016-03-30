//
//  LGBModel.h
//  LGBCategory
//
//  Created by lgb789 on 16/3/30.
//  Copyright © 2016年 lgb789. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LGBSubModel.h"

@interface LGBModel : NSObject <NSCoding>

@property (nonatomic, copy) NSString *name;

@property (nonatomic, assign) NSInteger age;

@property (nonatomic, assign) BOOL male;

@property (nonatomic, copy) NSArray *arrPro;

@property (nonatomic, copy) NSDictionary *dicPro;

@property (nonatomic, strong) LGBSubModel *subModel;

@end
