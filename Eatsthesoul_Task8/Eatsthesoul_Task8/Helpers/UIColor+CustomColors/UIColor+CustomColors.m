//
//  UIColor+CustomColors.m
//  Eatsthesoul_Task8
//
//  Created by Evgeniy Petlitskiy on 16.07.21.
//

#import "UIColor+CustomColors.h"
#import "UIColor+HexColor.h"


@implementation UIColor (CustomColors)


+ (UIColor *)lightGreenSea {
    return [UIColor colorFromHexString:@"#21B08E"];
}

+ (UIColor *)chillSky {
    return [UIColor colorFromHexString:@"00B2FF"];
}

+ (UIColor *)canvasShadowColor {
    return [UIColor colorWithRed:0 green:178 blue:255 alpha:0.25];
}

+ (UIColor *)greyShadowColor {
    return [UIColor colorWithRed:0 green:0 blue:0 alpha:0.25];
}

@end
