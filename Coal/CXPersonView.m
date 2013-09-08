//
//  CXPersonView.m
//  Coal
//
//  Created by Brad Smith on 9/7/13.
//  Copyright (c) 2013 Brad Smith. All rights reserved.
//

#import "CXPersonView.h"
#import <AFNetworking/UIImageView+AFNetworking.h>
@implementation CXPersonView


-(void) setData:(NSDictionary *)data {
  self.pos1Company.text = data[@"pos1_name"];
  self.pos2Company.text = data[@"pos2_name"];
  self.pos3Company.text = data[@"pos3_name"];
  self.pos1Title.text = data[@"pos1_title"];
  self.pos2Title.text = data[@"pos2_title"];
  self.pos3Title.text = data[@"pos3_title"];
  
  [self.pos1image setImageWithURL:[NSURL URLWithString:data[@"pos1_image"]]];
  [self.pos2Image setImageWithURL:[NSURL URLWithString:data[@"pos2_image"]]];
  [self.pos3Image setImageWithURL:[NSURL URLWithString:data[@"pos3_image"]]];
}

-(void) slideToRight {
  [self setCenter:CGPointMake(self.superview.bounds.size.width * 1.5, self.center.y)];
}

-(void) slideToLeft {
  [self setCenter:CGPointMake(0 - (self.superview.bounds.size.width * 1.5), self.center.y)];
}

- (void)dealloc {
  [_title release];
  [_pos1Title release];
  [_pos2Title release];
  [_pos3Title release];
  [_pos1Company release];
  [_pos2Company release];
  [_pos3Company release];
  [_pos1image release];
  [_pos2Company release];
  [_pos3Image release];
  [super dealloc];
}
@end
