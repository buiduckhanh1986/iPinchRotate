//
//  Case02.m
//  iPinchRotate
//
//  Created by Bui Duc Khanh on 9/28/16.
//  Copyright © 2016 Bui Duc Khanh. All rights reserved.
//

#import "Case02.h"

@interface Case02 ()

@end

@implementation Case02

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.ß
    [self.rotationGestureRecognizer requireGestureRecognizerToFail:self.pinchGestureRecognizer];
    
    [self caseDescription];
}

- (void) caseDescription{
    UILabel * lblCase = [UILabel new];
    lblCase.text = @"[rotation requireGestureRecognizerToFail:pinch]";
    lblCase.frame = CGRectMake(10, 70, self.view.frame.size.width - 10, 25);
    [self.view addSubview:lblCase];
    
    UILabel * lblNote01 = [UILabel new];
    lblNote01.text = @"+ Vì pinch không fail nên không bao giờ nhận rotation ";
    lblNote01.numberOfLines = 2;
    lblNote01.frame = CGRectMake(10, 95, self.view.frame.size.width - 10, 50);
    [self.view addSubview:lblNote01];
    
    UILabel * lblNote02 = [UILabel new];
    lblNote02.text = @"+ Trường hợp này chỉ nhận duy nhất Pinch";
    lblNote02.frame = CGRectMake(10, 145, self.view.frame.size.width - 10, 25);
    [self.view addSubview:lblNote02];
}
@end
