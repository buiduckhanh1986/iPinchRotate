//
//  Case03.m
//  iPinchRotate
//
//  Created by Bui Duc Khanh on 9/28/16.
//  Copyright © 2016 Bui Duc Khanh. All rights reserved.
//

#import "Case03.h"

@interface Case03 ()

@end

@implementation Case03

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.pinchGestureRecognizer requireGestureRecognizerToFail:self.rotationGestureRecognizer];
    
    [self caseDescription];
}

- (void) caseDescription{
    UILabel * lblCase = [UILabel new];
    lblCase.text = @"[pinch requireGestureRecognizerToFail:rotation]";
    lblCase.frame = CGRectMake(10, 70, self.view.frame.size.width - 10, 25);
    [self.view addSubview:lblCase];
    
    UILabel * lblNote01 = [UILabel new];
    lblNote01.text = @"+ Vì rotation không fail nên không bao giờ nhận pinch ";
    lblNote01.numberOfLines = 2;
    lblNote01.frame = CGRectMake(10, 95, self.view.frame.size.width - 10, 50);
    [self.view addSubview:lblNote01];
    
    UILabel * lblNote02 = [UILabel new];
    lblNote02.text = @"+ Trường hợp này chỉ nhận duy nhất rotation";
    lblNote02.frame = CGRectMake(10, 145, self.view.frame.size.width - 10, 25);
    [self.view addSubview:lblNote02];
}

@end
