//
//  EXQBaseViewController.h
//  exquisitecorpose
//
//  Created by Reid van Melle on 2013-10-19.
//  Copyright (c) 2013 Startup Weekend. All rights reserved.
//

#import <UIKit/UIKit.h>

@class EXQAppDelegate;

@interface EXQBaseViewController : UIViewController

- (EXQAppDelegate*)appDelegate;
- (UIViewController*)viewControllerFromStoryboard:(NSString*)vcid;

@end
