//
//  Case04.m
//  iPinchRotate
//
//  Created by Bui Duc Khanh on 9/28/16.
//  Copyright © 2016 Bui Duc Khanh. All rights reserved.
//

#import "Case04.h"

@interface Case04 ()<UIGestureRecognizerDelegate>

@end

@implementation Case04
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

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer {
    return switchState.on;
}

- (void) caseDescription{
    UILabel * lblCase = [UILabel new];
    lblCase.text = @"shouldRecognizeSimultaneouslyWithGestureRecognizer";
    lblCase.frame = CGRectMake(10, 100, self.view.frame.size.width - 10, 25);
    [self.view addSubview:lblCase];
    
    UILabel * lblNote01 = [UILabel new];
    lblNote01.text = @"+ Chỉnh switch ở trên cho true và false";
    lblNote01.frame = CGRectMake(10, 125, self.view.frame.size.width - 10, 25);
    [self.view addSubview:lblNote01];
    
    UILabel * lblNote02 = [UILabel new];
    lblNote02.text = @"+ True: nhận cả rotation và pinch";
    lblNote02.frame = CGRectMake(10, 150, self.view.frame.size.width - 10, 25);
    [self.view addSubview:lblNote02];
    
    UILabel * lblNote03 = [UILabel new];
    lblNote03.text = @"+ False: lúc đầu góc xoay > 0 -> chỉ Rotation dù có scale.Lúc đầu góc xoay = 0 và scale thì chỉ pinch dù sau đó xoay";
    lblNote03.numberOfLines = 4;
    lblNote03.frame = CGRectMake(10, 175, self.view.frame.size.width - 10, 75);
    [self.view addSubview:lblNote03];
}

@end
