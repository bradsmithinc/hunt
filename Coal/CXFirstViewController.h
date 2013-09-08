//
//  CXFirstViewController.h
//  Coal
//
//  Created by Brad Smith on 2/8/13.
//  Copyright (c) 2013 Brad Smith. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CXPhotoView.h"
#import "CXModel.h"

@interface CXFirstViewController : UIViewController {
  CGPoint _startingPoint;
  CXPhotoView *bottomView;
  CXPhotoView *topView;
  CXModel *model;
  BOOL _animating;
  
  UIWebView *webView;
  
  NSUInteger counter;
}
- (IBAction)noButtonPressed:(id)sender;
- (IBAction)infoButtonPressed:(id)sender;
- (IBAction)yesButtonPressed:(id)sender;

@end
