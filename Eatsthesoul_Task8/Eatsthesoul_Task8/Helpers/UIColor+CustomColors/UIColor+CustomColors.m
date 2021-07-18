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

+ (NSArray *)paletteColors {
    return @[[UIColor colorFromHexString:@"#E21B2C"],
             [UIColor colorFromHexString:@"#3E17CC"],
             [UIColor colorFromHexString:@"#007C37"],
             [UIColor colorFromHexString:@"#808080"],
             [UIColor colorFromHexString:@"#9D5EEA"],
             [UIColor colorFromHexString:@"#FF7A68"],
             [UIColor colorFromHexString:@"#FFAD54"],
             [UIColor colorFromHexString:@"#00AEED"],
             [UIColor colorFromHexString:@"#FF77A2"],
             [UIColor colorFromHexString:@"#002E3C"],
             [UIColor colorFromHexString:@"#0E3718"],
             [UIColor colorFromHexString:@"#610F10"]
    ];
}

@end
