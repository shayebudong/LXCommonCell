//
//  UIImage+Extension.m
//  我的微博
//
//  Created by ee on 16/4/2.
//  Copyright © 2016年 ee. All rights reserved.
//

#import "UIImage+Extension.h"

@implementation UIImage (Extension)
+(UIImage*)imageResized:(NSString*)imageName
{
    UIImage *image = [UIImage imageNamed:imageName];
    CGFloat top= image.size.height*1/2;
    CGFloat bottom = image.size.height/2;
    CGFloat left = image.size.width/2;
    CGFloat right = image.size.width/2;
    
    UIEdgeInsets edgeInsets =UIEdgeInsetsMake(top, left, bottom, right);
    return [image resizableImageWithCapInsets:edgeInsets resizingMode:UIImageResizingModeStretch];
}
@end
