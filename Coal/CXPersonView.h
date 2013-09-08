//
//  CXPersonView.h
//  Coal
//
//  Created by Brad Smith on 9/7/13.
//  Copyright (c) 2013 Brad Smith. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CXPersonView : UIView

@property (retain, nonatomic) IBOutlet UILabel *title;
@property (retain, nonatomic) IBOutlet UILabel *pos1Title;
@property (retain, nonatomic) IBOutlet UILabel *pos2Title;
@property (retain, nonatomic) IBOutlet UILabel *pos3Title;
@property (retain, nonatomic) IBOutlet UILabel *pos1Company;
@property (retain, nonatomic) IBOutlet UILabel *pos2Company;
@property (retain, nonatomic) IBOutlet UILabel *pos3Company;
@property (retain, nonatomic) IBOutlet UIImageView *pos1image;
@property (retain, nonatomic) IBOutlet UIImageView *pos2Image;
@property (retain, nonatomic) IBOutlet UIImageView *pos3Image;

@end
