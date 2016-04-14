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
#import "UIView+lgb_layout.h"

@interface LGBViewController ()
@property (nonatomic, strong) UIView *firstView;
@property (nonatomic, strong) UIView *secondView;
@end

@implementation LGBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self test];
    
    [self.view addSubview:self.firstView];
    [self.view addSubview:self.secondView];
    
    self.firstView.size = CGSizeMake(self.view.width * 0.3, self.view.height * 0.1);
    self.secondView.size = self.firstView.size;
    
    [self.firstView centerEqualToView:self.view];
    [self.secondView rightEqualToView:self.firstView];
    self.secondView.top = 150;
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

-(UIView *)firstView
{
    if (_firstView == nil) {
        _firstView = [UIView new];
        _firstView.backgroundColor = [UIColor redColor];
    }
    return _firstView;
}

-(UIView *)secondView
{
    if (_secondView == nil) {
        _secondView = [UIView new];
        _secondView.backgroundColor = [UIColor yellowColor];
    }
    return _secondView;
}

@end
