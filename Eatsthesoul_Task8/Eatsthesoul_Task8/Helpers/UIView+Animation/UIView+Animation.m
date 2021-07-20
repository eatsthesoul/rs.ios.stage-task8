//
//  UIView+Animation.m
//  Eatsthesoul_Task8
//
//  Created by Evgeniy Petlitskiy on 20.07.21.
//

#import "UIView+Animation.h"

@implementation UIView (Animation)

- (void)changeBackgroundColor:(UIColor *)color withDuration:(NSTimeInterval)duration
{
    [UIView animateWithDuration:duration animations:^{
        self.backgroundColor = color;
    } completion:nil];
}

@end
