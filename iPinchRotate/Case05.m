//
//  Case05.m
//  iPinchRotate
//
//  Created by Bui Duc Khanh on 9/29/16.
//  Copyright © 2016 Bui Duc Khanh. All rights reserved.
//

#import "Case05.h"

@interface Case05 ()<UIGestureRecognizerDelegate>

@end

@implementation Case05
{
    UISwitch *switchState;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    switchState = [UISwitch new];
    switchState.on = true;
    switchState.center = CGPointMake(self.view.frame.size.width * 0.5, 80);
    [self.view addSubview:switchState];
    
    self.rotationGestureRecognizer.delegate = self;
    self.pinchGestureRecognizer.delegate = self;
    
    [self caseDescription];
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRequireFailureOfGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer{
    if ([gestureRecognizer isMemberOfClass:[UIRotationGestureRecognizer class]] &&
        [otherGestureRecognizer isMemberOfClass:[UIPinchGestureRecognizer class]]) {
        return switchState.on;
    } else {
        return !switchState.on;
    }
}

- (void) caseDescription{
    UILabel * lblCase = [UILabel new];
    lblCase.text = @"Rotation shouldRequireFailureOfGestureRecognizer Pinch";
    lblCase.frame = CGRectMake(10, 100, self.view.frame.size.width - 10, 25);
    [self.view addSubview:lblCase];
    
    UILabel * lblNote01 = [UILabel new];
    lblNote01.text = @"+ Chỉnh switch ở trên cho true và false";
    lblNote01.frame = CGRectMake(10, 125, self.view.frame.size.width - 10, 25);
    [self.view addSubview:lblNote01];
    
    UILabel * lblNote02 = [UILabel new];
    lblNote02.text = @"+ True: nhận Rotation khi pinch fail -> chỉ nhận Pinch vì Pinch bao giờ cũng nhận diện được";
    lblNote02.numberOfLines = 2;
    lblNote02.frame = CGRectMake(10, 150, self.view.frame.size.width - 10, 50);
    [self.view addSubview:lblNote02];
    
    UILabel * lblNote03 = [UILabel new];
    lblNote03.text = @"+ False: vế else trả về true nhận Pinch khi Rotation fail -> chỉ nhận Rotation vì Rotation bao giờ cũng nhận diện được";
    lblNote03.numberOfLines = 3;
    lblNote03.frame = CGRectMake(10, 200, self.view.frame.size.width - 10, 75);
    [self.view addSubview:lblNote03];
}
@end
