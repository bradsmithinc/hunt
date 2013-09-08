//
//  CXModel.m
//  Coal
//
//  Created by Brad Smith on 9/7/13.
//  Copyright (c) 2013 Brad Smith. All rights reserved.
//

#import "CXModel.h"

@implementation CXModel

-(id) init {
  if (self = [super init]) {
    index = 0;
    data = @[
             @{@"image_url": @"http://www.zimo.co/images/upload/41/airbnb_2_copy.jpeg",
               @"html": @"This is a test",
               @"name": @"Jen Wilhelm",
               @"tag_list": @"developer, designer, front-end, ux, ui, design, startup, photoshop, branding",
               @"pos1_name": @"8byte8",
               @"pos1_title": @"Designer and front-end developer",
               @"pos1_image": @"http://crunchbase.com/assets/images/resized/0016/2903/162903v4-max-150x150.png",
               @"pos2_name": @"8byte8",
               @"pos2_title": @"Designer and front-end developer",
               @"pos2_image": @"http://crunchbase.com/assets/images/resized/0016/2903/162903v4-max-150x150.png",
               @"pos3_name": @"8byte8",
               @"pos3_title": @"Designer and front-end developer",
               @"pos3_image": @"http://crunchbase.com/assets/images/resized/0016/2903/162903v4-max-150x150.png"
               },
             
             @{@"image_url": @"http://www.na-komorke.net/komurka/maltanczyk-maltese-kokardka-niebieska.jpeg",
               @"html": @"This is a test",
               @"name": @"Olivier Hory",
               @"tag_list": @"front-end, developer, architect, founder, earliz",
               @"pos1_name": @"Earliz",
               @"pos1_title": @"Founder",
               @"pos1_image": @"http://crunchbase.com/assets/images/resized/0016/2903/162903v4-max-150x150.png",
               @"pos2_name": @"8byte8",
               @"pos2_title": @"Designer and front-end developer",
               @"pos2_image": @"http://crunchbase.com/assets/images/resized/0016/2903/162903v4-max-150x150.png",
               @"pos3_name": @"8byte8",
               @"pos3_title": @"Designer and front-end developer",
               @"pos3_image": @"http://crunchbase.com/assets/images/resized/0016/2903/162903v4-max-150x150.png"
               },
             
             @{@"image_url": @"http://www.na-komorke.net/komurka/maltanczyk-maltese-kokardka-niebieska.jpeg",
               @"html": @"This is a test",
               @"name": @"Jen Wilhelm",
               @"tag_list": @"developer, designer, front-end, ux, ui, design, startup, photoshop, branding",
               @"pos1_name": @"8byte8",
               @"pos1_title": @"Designer and front-end developer",
               @"pos1_image": @"http://crunchbase.com/assets/images/resized/0016/2903/162903v4-max-150x150.png",
               @"pos2_name": @"8byte8",
               @"pos2_title": @"Designer and front-end developer",
               @"pos2_image": @"http://crunchbase.com/assets/images/resized/0016/2903/162903v4-max-150x150.png",
               @"pos3_name": @"8byte8",
               @"pos3_title": @"Designer and front-end developer",
               @"pos3_image": @"http://crunchbase.com/assets/images/resized/0016/2903/162903v4-max-150x150.png"
               },
             
             @{@"image_url": @"http://www.na-komorke.net/komurka/maltanczyk-maltese-kokardka-niebieska.jpeg",
               @"html": @"This is a test",
               @"name": @"Jen Wilhelm",
               @"tag_list": @"developer, designer, front-end, ux, ui, design, startup, photoshop, branding",
               @"pos1_name": @"8byte8",
               @"pos1_title": @"Designer and front-end developer",
               @"pos1_image": @"http://crunchbase.com/assets/images/resized/0016/2903/162903v4-max-150x150.png",
               @"pos2_name": @"8byte8",
               @"pos2_title": @"Designer and front-end developer",
               @"pos2_image": @"http://crunchbase.com/assets/images/resized/0016/2903/162903v4-max-150x150.png",
               @"pos3_name": @"8byte8",
               @"pos3_title": @"Designer and front-end developer",
               @"pos3_image": @"http://crunchbase.com/assets/images/resized/0016/2903/162903v4-max-150x150.png"
               },
             
             @{@"image_url": @"http://www.na-komorke.net/komurka/maltanczyk-maltese-kokardka-niebieska.jpeg",
               @"html": @"This is a test",
               @"name": @"Jen Wilhelm",
               @"tag_list": @"developer, designer, front-end, ux, ui, design, startup, photoshop, branding",
               @"pos1_name": @"8byte8",
               @"pos1_title": @"Designer and front-end developer",
               @"pos1_image": @"http://crunchbase.com/assets/images/resized/0016/2903/162903v4-max-150x150.png",
               @"pos2_name": @"8byte8",
               @"pos2_title": @"Designer and front-end developer",
               @"pos2_image": @"http://crunchbase.com/assets/images/resized/0016/2903/162903v4-max-150x150.png",
               @"pos3_name": @"8byte8",
               @"pos3_title": @"Designer and front-end developer",
               @"pos3_image": @"http://crunchbase.com/assets/images/resized/0016/2903/162903v4-max-150x150.png"
               },
             
             @{@"image_url": @"http://www.na-komorke.net/komurka/maltanczyk-maltese-kokardka-niebieska.jpeg",
               @"html": @"This is a test",
               @"name": @"Jen Wilhelm",
               @"tag_list": @"developer, designer, front-end, ux, ui, design, startup, photoshop, branding",
               @"pos1_name": @"8byte8",
               @"pos1_title": @"Designer and front-end developer",
               @"pos1_image": @"http://crunchbase.com/assets/images/resized/0016/2903/162903v4-max-150x150.png",
               @"pos2_name": @"8byte8",
               @"pos2_title": @"Designer and front-end developer",
               @"pos2_image": @"http://crunchbase.com/assets/images/resized/0016/2903/162903v4-max-150x150.png",
               @"pos3_name": @"8byte8",
               @"pos3_title": @"Designer and front-end developer",
               @"pos3_image": @"http://crunchbase.com/assets/images/resized/0016/2903/162903v4-max-150x150.png"
               },
             
             @{@"image_url": @"http://www.na-komorke.net/komurka/maltanczyk-maltese-kokardka-niebieska.jpeg",
               @"html": @"This is a test",
               @"name": @"Jen Wilhelm",
               @"tag_list": @"developer, designer, front-end, ux, ui, design, startup, photoshop, branding",
               @"pos1_name": @"8byte8",
               @"pos1_title": @"Designer and front-end developer",
               @"pos1_image": @"http://crunchbase.com/assets/images/resized/0016/2903/162903v4-max-150x150.png",
               @"pos2_name": @"8byte8",
               @"pos2_title": @"Designer and front-end developer",
               @"pos2_image": @"http://crunchbase.com/assets/images/resized/0016/2903/162903v4-max-150x150.png",
               @"pos3_name": @"8byte8",
               @"pos3_title": @"Designer and front-end developer",
               @"pos3_image": @"http://crunchbase.com/assets/images/resized/0016/2903/162903v4-max-150x150.png"
               },
             
             @{@"image_url": @"http://www.na-komorke.net/komurka/maltanczyk-maltese-kokardka-niebieska.jpeg",
               @"html": @"This is a test",
               @"name": @"Jen Wilhelm",
               @"tag_list": @"developer, designer, front-end, ux, ui, design, startup, photoshop, branding",
               @"pos1_name": @"8byte8",
               @"pos1_title": @"Designer and front-end developer",
               @"pos1_image": @"http://crunchbase.com/assets/images/resized/0016/2903/162903v4-max-150x150.png",
               @"pos2_name": @"8byte8",
               @"pos2_title": @"Designer and front-end developer",
               @"pos2_image": @"http://crunchbase.com/assets/images/resized/0016/2903/162903v4-max-150x150.png",
               @"pos3_name": @"8byte8",
               @"pos3_title": @"Designer and front-end developer",
               @"pos3_image": @"http://crunchbase.com/assets/images/resized/0016/2903/162903v4-max-150x150.png"
               },
             
             @{@"image_url": @"http://www.na-komorke.net/komurka/maltanczyk-maltese-kokardka-niebieska.jpeg",
               @"html": @"This is a test",
               @"name": @"Jen Wilhelm",
               @"tag_list": @"developer, designer, front-end, ux, ui, design, startup, photoshop, branding",
               @"pos1_name": @"8byte8",
               @"pos1_title": @"Designer and front-end developer",
               @"pos1_image": @"http://crunchbase.com/assets/images/resized/0016/2903/162903v4-max-150x150.png",
               @"pos2_name": @"8byte8",
               @"pos2_title": @"Designer and front-end developer",
               @"pos2_image": @"http://crunchbase.com/assets/images/resized/0016/2903/162903v4-max-150x150.png",
               @"pos3_name": @"8byte8",
               @"pos3_title": @"Designer and front-end developer",
               @"pos3_image": @"http://crunchbase.com/assets/images/resized/0016/2903/162903v4-max-150x150.png"
               },
             
             @{@"image_url": @"http://www.na-komorke.net/komurka/maltanczyk-maltese-kokardka-niebieska.jpeg",
               @"html": @"This is a test",
               @"name": @"Jen Wilhelm",
               @"tag_list": @"developer, designer, front-end, ux, ui, design, startup, photoshop, branding",
               @"pos1_name": @"8byte8",
               @"pos1_title": @"Designer and front-end developer",
               @"pos1_image": @"http://crunchbase.com/assets/images/resized/0016/2903/162903v4-max-150x150.png",
               @"pos2_name": @"8byte8",
               @"pos2_title": @"Designer and front-end developer",
               @"pos2_image": @"http://crunchbase.com/assets/images/resized/0016/2903/162903v4-max-150x150.png",
               @"pos3_name": @"8byte8",
               @"pos3_title": @"Designer and front-end developer",
               @"pos3_image": @"http://crunchbase.com/assets/images/resized/0016/2903/162903v4-max-150x150.png"
               }
             

            ];
    [data retain];
  }
  return self;
}

-(NSDictionary *) next {
  NSDictionary *d = data[index++];
  if (index >= data.count) {
    index = 0;
  }
  return d;
}

@end