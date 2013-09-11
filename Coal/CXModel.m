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
             @{@"image_url": @"http://crunchbase.com/assets/images/resized/0020/0013/200013v2-max-150x150.jpg",
               
               @"html": @"Jen is a designer and front-end developer living and working in Las Vegas...",
               
               @"name": @"Jen Wilhelm",
               
               @"tag_list": @"developer, designer, front-end, ux, ui, design, startup, photoshop, branding",
               
               @"pos1_name": @"8byte8",
               
               @"pos1_title": @"Designer and front-end developer",
               
               @"pos1_image": @"http://crunchbase.com/assets/images/resized/0016/2903/162903v4-max-150x150.png",
               
               @"pos2_name": @"Zappos",
               
               @"pos2_title": @"Senior Front-end Developer",
               
               @"pos2_image": @"http://crunchbase.com/assets/images/resized/0001/2482/12482v1-max-150x150.png",
               
               @"pos3_name": @"Burns Marketing Communications",
               
               @"pos3_title": @"Interactive Developer",
               
               @"pos3_image": @"http://s.c.lnkd.licdn.com/scds/common/u/images/themes/katy/ghosts/company/ghost_company_100x60_v1.png"
               
               
               
               },
             
             
             
             @{@"image_url": @"http://crunchbase.com/assets/images/resized/0018/8646/188646v2-max-150x150.jpg",
               
               @"html": @"Olivier founded Earliz.com...",
               
               @"name": @"Olivier Hory",
               
               @"tag_list": @"front-end, developer, architect, founder, earliz",
               
               @"pos1_name": @"Earliz",
               
               @"pos1_title": @"Founder",
               
               @"pos1_image": @"http://crunchbase.com/assets/images/resized/0018/8652/188652v2-max-150x150.png",
               
               @"pos2_name": @"Yahoo!",
               
               @"pos2_title": @"Designer and front-end developer",
               
               @"pos2_image": @"http://crunchbase.com/assets/images/resized/0001/0836/10836v12-max-150x150.png",
               
               @"pos3_name": @"Viadeo",
               
               @"pos3_title": @"Front-End Architect",
               
               @"pos3_image": @"http://crunchbase.com/assets/images/resized/0002/0087/20087v2-max-150x150.png"
               
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