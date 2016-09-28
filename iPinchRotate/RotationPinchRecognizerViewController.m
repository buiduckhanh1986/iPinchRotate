//
//  RotationPinchRecognizerViewController.m
//  iPinchRotate
//
//  Created by Bui Duc Khanh on 9/28/16.
//  Copyright © 2016 Bui Duc Khanh. All rights reserved.
//

#import "RotationPinchRecognizerViewController.h"

@interface RotationPinchRecognizerViewController ()

@end

@implementation RotationPinchRecognizerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self initGUI];
}


// Khởi tạo giao diện
- (void) initGUI{
    // Xử lý navigation bar, background
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    // Thêm bóng
    self.ball = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Ball"]];
    self.ball.center = CGPointMake(self.view.frame.size.width/2.0, self.view.frame.size.height/2.0);
    self.ball.multipleTouchEnabled = true;
    self.ball.userInteractionEnabled = true;
    
    [self.view addSubview:self.ball];
    
    // Đăng ký Pinch
    self.pinchGestureRecognizer = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(onPinch:)];
    [self.ball addGestureRecognizer:self.pinchGestureRecognizer];
    
    
    // Đăng ký Rotation
    self.rotationGestureRecognizer = [[UIRotationGestureRecognizer alloc] initWithTarget:self action:@selector(onRotation:)];
    [self.ball addGestureRecognizer:self.rotationGestureRecognizer];
    
}


// Zoom khi pinch
- (void) onPinch: (UIPinchGestureRecognizer*) pinch {
    if (pinch.state == UIGestureRecognizerStateBegan || pinch.state == UIGestureRecognizerStateChanged){
        NSLog(@"Pinch");
        
        pinch.view.transform = CGAffineTransformScale(pinch.view.transform, pinch.scale, pinch.scale);
        pinch.scale = 1.0;
    }
}


// Xoay khi rotate
- (void) onRotation: (UIRotationGestureRecognizer*) rotation{
    if (rotation.state == UIGestureRecognizerStateBegan || rotation.state == UIGestureRecognizerStateChanged) {
        NSLog(@"Rotation");
        
        rotation.view.transform = CGAffineTransformRotate(rotation.view.transform, rotation.rotation);
        
        rotation.rotation = 0.0;
    }
}
@end
