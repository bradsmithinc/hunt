//
//  CXPhotoView.h
//  Coal
//
//  Created by Brad Smith on 2/10/13.
//  Copyright (c) 2013 Brad Smith. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CXPhotoView : UIView

@property (nonatomic, retain) UIImageView *imageView;
@property (nonatomic, retain) UIImageView *overlayImageView;
@property (nonatomic, retain) UILabel *nameLabel;
@property (nonatomic, retain) UILabel *sharedFriendsLabel;
@property (nonatomic, retain) UILabel *sharedInterestsLabel;
  
-(void) slideToRight;
-(void) slideToLeft;

-(void) setData:(NSDictionary *)data;
@end
