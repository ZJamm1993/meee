   //
//  UIImageView+ZZWebImage.m
//  ZZWebImage
//
//  Created by jam on 17-12-9.
//  Copyright (c) 2017年 jam. All rights reserved.
//

#import "UIImageView+ZZWebImage.h"
#import <objc/runtime.h>

static char *ZZWebImageUrlKey="ZZWebImageUrlKey";

@implementation UIImageView (ZZWebImage)

-(void)setImageUrl:(NSString *)url
{
    [self setImageUrl:url placeHolder:nil];
}

-(void)setImageUrl:(NSString *)url placeHolder:(UIImage *)placeHolder
{
    UIImage* localImage=[UIImage imageNamed:url];
    if (localImage) {
        self.image=localImage;
        return;
    }
    
    __weak typeof(self) ws=self;
    [self setImageUrl:url placeHolder:placeHolder completed:^(UIImage *image, NSError *error, NSString *imageUrl) {
        ws.image=image;
    }];
}

-(void)setImageUrl:(NSString *)url placeHolder:(UIImage *)placeHolder completed:(void (^)(UIImage *, NSError *, NSString *))completion
{
    if (placeHolder) {
        self.image=placeHolder;
    }
    else
    {
        self.image=nil;
    }
    if (url.length>0) {
        self.webImageUrl=url;
        [ZZWebImageTool getImageFromUrl:url success:^(UIImage *image, NSError *error) {
            if (image&&[url isEqualToString:self.webImageUrl]) {
                self.image=image;
                if (completion) {
                    completion(image,error,url);
                }
            }
        }];
    }
}

-(void)setWebImageUrl:(NSString *)webImageUrl
{
    objc_setAssociatedObject(self, ZZWebImageUrlKey, webImageUrl, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

-(NSString*)webImageUrl
{
    return objc_getAssociatedObject(self, ZZWebImageUrlKey);
}

@end
