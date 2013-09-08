//
//  CXPhotoView.m
//  Coal
//
//  Created by Brad Smith on 2/10/13.
//  Copyright (c) 2013 Brad Smith. All rights reserved.
//

#import "CXPhotoView.h"
#import <AFNetworking/UIImageView+AFNetworking.h>

@implementation CXPhotoView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
      self.backgroundColor = [UIColor redColor];
      self.imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, 247)];
      [self.imageView setBackgroundColor:[UIColor orangeColor]];
      [self addSubview:self.imageView];
    }
    return self;
}


-(void) slideToRight {
  [self setCenter:CGPointMake(self.superview.bounds.size.width * 1.5, self.center.y)];
}
   
-(void) slideToLeft {
    [self setCenter:CGPointMake(0 - (self.superview.bounds.size.width * 1.5), self.center.y)];
}
   


-(void) setData:(NSDictionary *)data {
  NSURL *url = [NSURL URLWithString:data[@"image_url"]];
  [self.imageView setImageWithURL:url];
  NSLog(@"%@",data);
}

@end
