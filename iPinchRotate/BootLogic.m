//
//  BootLogic.m
//  TechmasterApp
//
//  Created by techmaster on 9/7/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

#import "BootLogic.h"
#import "MainScreen.h"


@implementation BootLogic
+ (void) boot: (UIWindow*) window
{
    MainScreen* mainScreen = [[MainScreen alloc] initWithStyle:UITableViewStyleGrouped];
    //--------- From this line, please customize your menu data -----------
    NSDictionary* basic = @{SECTION: @"Không dùng Gesture Recognizer Delegate", MENU: @[
                                    @{TITLE: @"01: Bật Pinch & Rotation", CLASS: @"Case01"},
                                    @{TITLE: @"02: Rotation requireGestureRecognizerToFail Pinch", CLASS: @"Case02"},
                                    @{TITLE: @"03: Pinch requireGestureRecognizerToFail Rotation", CLASS: @"Case03"}
                          ]};
    
    NSDictionary* gestureRecognizerDelegate = @{SECTION: @"Dùng Gesture Recognizer Delegate", MENU: @[
                                    @{TITLE: @"04: shouldRecognizeSimultaneouslyWithGestureRecognizer", CLASS: @"Case04"},
                                    @{TITLE: @"05: shouldRequireFailureOfGestureRecognizer", CLASS: @"Case05"},
                                    @{TITLE: @"06: shouldBeRequiredToFailByGestureRecognizer", CLASS: @"Case06"}
                        ]};
    
    mainScreen.menu = @[basic, gestureRecognizerDelegate];
    mainScreen.title = @"Pinch & Rotation";
    mainScreen.about = @"Pinch & Rotation gesture recognizer application demo";
    //--------- End of customization -----------
    UINavigationController* nav = [[UINavigationController alloc] initWithRootViewController: mainScreen];
    
    window.rootViewController = nav;
}
@end
