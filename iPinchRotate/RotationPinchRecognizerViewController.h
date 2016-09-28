//
//  RotationPinchRecognizerViewController.h
//  iPinchRotate
//
//  Created by Bui Duc Khanh on 9/28/16.
//  Copyright © 2016 Bui Duc Khanh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RotationPinchRecognizerViewController : UIViewController
@property UIImageView * ball;

@property UIPinchGestureRecognizer *pinchGestureRecognizer;

@property UIRotationGestureRecognizer *rotationGestureRecognizer;

- (void) onPinch: (UIPinchGestureRecognizer*) pinch;
- (void) onRotation: (UIRotationGestureRecognizer*) rotation;

@end
