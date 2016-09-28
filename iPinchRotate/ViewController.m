//
//  ViewController.m
//  iPinchRotate
//
//  Created by Bui Duc Khanh on 9/27/16.
//  Copyright © 2016 Bui Duc Khanh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIGestureRecognizerDelegate>

@end

@implementation ViewController
{
    UIImageView * ball;
    
    UIPinchGestureRecognizer *pinchGestureRecognizer;
    
    UIRotationGestureRecognizer *rotationGestureRecognizer;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    //self.edgesForExtendedLayout = UIRectEdgeNone;  // có dòng này thì không nhận đa chạm
    
    [self initGUI];
    
    // Pinch
    pinchGestureRecognizer = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(onPinch:)];
    pinchGestureRecognizer.delegate = self;
    [ball addGestureRecognizer:pinchGestureRecognizer];
    
    
    // Rotation
    rotationGestureRecognizer = [[UIRotationGestureRecognizer alloc] initWithTarget:self action:@selector(onRotation:)];
    rotationGestureRecognizer.delegate = self;
    [ball addGestureRecognizer:rotationGestureRecognizer];
    
    // TH4
    //[rotationGestureRecognizer requireGestureRecognizerToFail:pinchGestureRecognizer];
    
    //[pinchGestureRecognizer requireGestureRecognizerToFail:rotationGestureRecognizer];
}

// Khởi tạo giao diện
- (void) initGUI{
    ball = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Ball"]];
    ball.center = CGPointMake(self.view.frame.size.width/2.0, self.view.frame.size.height/2.0);
    ball.multipleTouchEnabled = true;
    ball.userInteractionEnabled = true;
    
    [self.view addSubview:ball];
}


- (void) onPinch: (UIPinchGestureRecognizer*) pinch {
    if (pinch.state == UIGestureRecognizerStateBegan || pinch.state == UIGestureRecognizerStateChanged){
        NSLog(@"Pinch");
        
        ball.transform = CGAffineTransformScale(ball.transform, pinch.scale, pinch.scale);
        pinch.scale = 1.0;
    }
}


- (void) onRotation: (UIRotationGestureRecognizer*) rotation{
    if (rotation.state == UIGestureRecognizerStateBegan || rotation.state == UIGestureRecognizerStateChanged) {
        NSLog(@"Rotation");
        
        rotation.view.transform = CGAffineTransformRotate(rotation.view.transform, rotation.rotation);
        
        rotation.rotation = 0.0;
    }
}

/*
- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer {
    return false;
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRequireFailureOfGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer{
    if ([gestureRecognizer isMemberOfClass:[UIRotationGestureRecognizer class]] &&
        [otherGestureRecognizer isMemberOfClass:[UIPinchGestureRecognizer class]]) {
        return true;
    } else {
        return false;
    }
}
 */

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldBeRequiredToFailByGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer {
    if ([gestureRecognizer isMemberOfClass:[UIRotationGestureRecognizer class]] &&
        [otherGestureRecognizer isMemberOfClass:[UIPinchGestureRecognizer class]]) {
        return true;
    } else {
        return false;
    }
}
@end
