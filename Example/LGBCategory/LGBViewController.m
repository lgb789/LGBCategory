//
//  LGBViewController.m
//  LGBCategory
//
//  Created by lgb789 on 03/30/2016.
//  Copyright (c) 2016 lgb789. All rights reserved.
//

#import "LGBViewController.h"
#import "LGBModel.h"
#import "NSObject+lgb_ToDictionary.h"
#import "NSDictionary+lgb_JSONString.h"

@interface LGBViewController ()

@end

@implementation LGBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self test];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)test
{
    LGBModel *model = [LGBModel new];
    model.name = @"name";
    model.age = 22;
    model.male = YES;
    model.arrPro = @[@"tttt", @4444, @[@"yy", @99]];
    model.dicPro = @{@"City":@"sz", @"Postcode":@12345};
    
    LGBSubModel *subModel = [LGBSubModel new];
    subModel.subName = @"bbb";
    subModel.subGrade = 8;
    
    model.subModel = subModel;
    
    NSDictionary *dic = [model lgb_ToDictionary];
    NSLog(@"dic:%@\n%@", dic, [dic lgb_JSONString]);
    
}

@end
