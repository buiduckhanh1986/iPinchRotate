//
//  Case01.m
//  iPinchRotate
//
//  Created by Bui Duc Khanh on 9/28/16.
//  Copyright © 2016 Bui Duc Khanh. All rights reserved.
//

#import "Case01.h"

@interface Case01 ()

@end

@implementation Case01

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self caseDescription];
}

- (void) caseDescription{
    UILabel * lblCase = [UILabel new];
    lblCase.text = @"Chỉ đăng ký Rotation & Pinch";
    lblCase.frame = CGRectMake(10, 70, self.view.frame.size.width - 10, 25);
    [self.view addSubview:lblCase];
    
    UILabel * lblNote01 = [UILabel new];
    lblNote01.text = @"+ Lúc đầu góc xoay > 0 thì chỉ nhận Rotation dù sau đó có scale";
    lblNote01.numberOfLines = 2;
    lblNote01.frame = CGRectMake(10, 95, self.view.frame.size.width - 10, 50);
    [self.view addSubview:lblNote01];
    
    UILabel * lblNote02 = [UILabel new];
    lblNote02.text = @"+ Lúc đầu góc xoay = 0 và scale thì chỉ nhận Pinch dù sau đó xoay";
    lblNote02.numberOfLines = 2;
    lblNote02.frame = CGRectMake(10, 145, self.view.frame.size.width - 10, 50);
    [self.view addSubview:lblNote02];
}
@end
