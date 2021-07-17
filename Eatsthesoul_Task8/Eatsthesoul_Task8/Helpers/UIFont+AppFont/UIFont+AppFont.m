//
//  UIFont+AppFont.m
//  Eatsthesoul_Task8
//
//  Created by Evgeniy Petlitskiy on 16.07.21.
//

#import "UIFont+AppFont.h"

@implementation UIFont (AppFont)

+ (id)appRegularFontWithSize:(CGFloat)size {
    return [UIFont fontWithName:@"Montserrat-Regular" size:size];
}

+ (id)appMediumFontWithSize:(CGFloat)size {
    return [UIFont fontWithName:@"Montserrat-Medium" size:size];
}

@end
