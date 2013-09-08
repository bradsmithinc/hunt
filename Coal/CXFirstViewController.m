//
//  CXFirstViewController.m
//  Coal
//
//  Created by Brad Smith on 2/8/13.
//  Copyright (c) 2013 Brad Smith. All rights reserved.
//

#import "CXFirstViewController.h"
#import "CXPersonView.h"
#import <ECSlidingViewController/ECSlidingViewController.h>
@interface CXFirstViewController ()

@end

@implementation CXFirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
      _animating = NO;
    }
    return self;
}
							
- (void)viewDidLoad
{
  [super viewDidLoad];
  
  model = [[CXModel alloc] init];
  
  self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"hunt-logo"]];
  self.navigationItem.titleView.bounds = CGRectMake(0, 0, 320, 35);
  self.navigationItem.titleView.contentMode = UIViewContentModeScaleAspectFit;
  
  UIBarButtonItem *left = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"menu"] landscapeImagePhone:nil style:UIBarButtonItemStylePlain target:self action:@selector(menuButtonPressed:)];
  self.navigationItem.leftBarButtonItem = left;
  left.tintColor = [UIColor blackColor];
  
  
  NSDictionary *data = [model next];
  
  
	bottomView = [[CXPhotoView alloc] initWithFrame:CGRectMake(0, 83, 320, 255)];
  bottomView.backgroundColor = [UIColor blueColor];
  [bottomView setData:data];
  [self.view addSubview:bottomView];
  
  
  data = [model next];
  
  
  NSArray *arrayOfViews = [[NSBundle mainBundle] loadNibNamed:@"PersonView"
                                                        owner:nil
                                                      options:nil];
  
  
  topView = [arrayOfViews firstObject]; //[[CXPersonView alloc] initWithFrame:CGRectMake(0, 83, 320, 255)];
  [self.view addSubview:topView];
  [topView setData:data];
  webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 255+83, 320, 122)];
  webView.scrollView.scrollEnabled = NO;
  webView.opaque = NO;
  webView.backgroundColor = [UIColor clearColor];
  
  [webView loadHTMLString:@"<body style=\"background-color: transparent;\">SOFTWARE ENGINEER, ANDROID<ul><li>2+ Years Experence<li>Product Aware<li>Experence shipping one or more android apps" baseURL:nil];
  self.view.backgroundColor = [UIColor colorWithRed:0.95 green:0.95 blue:0.95 alpha:1.0];
  
  [self.view addSubview:webView];
  
  UIGestureRecognizer *panGestureRecoginizer = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(pan:)];
  [topView addGestureRecognizer:panGestureRecoginizer];
 
  [self.view addGestureRecognizer:self.slidingViewController.panGesture];
  [self.slidingViewController setAnchorRightRevealAmount:280.0f];
  [self.slidingViewController setAnchorLeftRevealAmount:280.0f];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void) slideViewToRight:(CXPhotoView *)view {
  _animating = YES;
  [UIView animateWithDuration:0.30 animations:^(void) {
    view.transform = CGAffineTransformMakeRotation( (M_PI/5) * 1);
    [view slideToRight];
    webView.alpha = 0;
  } completion:^(BOOL finished) {
    view.transform = CGAffineTransformIdentity;
    [self.view insertSubview:view belowSubview:bottomView];
    [view setData:[model next]];
    view.center = bottomView.center;
    topView = bottomView;
    bottomView = view;
    _animating = NO;
    webView.alpha = 1;
    [topView setGestureRecognizers:bottomView.gestureRecognizers];
  }];
}

-(void) slideViewToLeft:(CXPhotoView *)view {
  _animating = YES;
  [UIView animateWithDuration:0.30 animations:^(void) {
   view.transform = CGAffineTransformMakeRotation( (M_PI/5) * -1);
    webView.alpha = 0;
    [view slideToLeft];
  } completion:^(BOOL finished) {
    view.transform = CGAffineTransformIdentity;
    [self.view insertSubview:view belowSubview:bottomView];
        [view setData:[model next]];
    view.center = bottomView.center;
    topView = bottomView;
    bottomView = view;
    _animating = NO;
    webView.alpha = 1;
    [topView setGestureRecognizers:bottomView.gestureRecognizers];
  }];
}


-(void)pan:(UIPanGestureRecognizer *)recognizer {
  CXPhotoView *view = (CXPhotoView *)recognizer.view;
  CGPoint translatedPoint = [recognizer translationInView:recognizer.view.superview];
  
  if([recognizer state] == UIGestureRecognizerStateBegan) {
    _startingPoint = recognizer.view.center;
  }
  
  translatedPoint = CGPointMake(_startingPoint.x+translatedPoint.x, _startingPoint.x+translatedPoint.y);
  
  [recognizer.view setCenter:translatedPoint];
  
  CGFloat distance = sqrt( (translatedPoint.x - _startingPoint.x) * (translatedPoint.x - _startingPoint.x) + (translatedPoint.y - _startingPoint.y) * (translatedPoint.y - _startingPoint.y));
  
  CGFloat x = 1-(distance/200.0);
  if (x < 0) {
    x = 0;
  }
  if (x > 1) {
    x = 1;
  }
  webView.alpha = x;
  NSLog(@"%f",x);
  recognizer.view.transform = CGAffineTransformMakeRotation(distance/300 * (M_PI/5) * ((translatedPoint.x > _startingPoint.x)?1:-1));
  
  
  
  if([recognizer state] == UIGestureRecognizerStateEnded) {
      if (recognizer.view.center.x > recognizer.view.superview.bounds.size.width * 0.75) {
        [self slideViewToRight:view];
      }
      else if (recognizer.view.center.x < recognizer.view.superview.bounds.size.width * 0.25) {
        //Go Left
        [self slideViewToLeft:view];
      }
      else {
        //Return to Center
        [UIView animateWithDuration:0.20 animations:^(void) {
          [recognizer.view setCenter:_startingPoint];
          recognizer.view.transform = CGAffineTransformIdentity;
          webView.alpha = 1;
        }];
      }
  }
}


- (IBAction)noButtonPressed:(id)sender {
  if (!_animating) {
    [self slideViewToLeft:topView];
  }
}

- (IBAction)infoButtonPressed:(id)sender {
}

- (IBAction)yesButtonPressed:(id)sender {
  if (!_animating) {
    [self slideViewToRight:topView];
  }
}

-(void) menuButtonPressed:(id)sender {
  [self.slidingViewController class];
}
@end
