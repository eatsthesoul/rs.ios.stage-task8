//
//  RSButton.m
//  Eatsthesoul_Task8
//
//  Created by Evgeniy Petlitskiy on 17.07.21.
//

#import "RSButton.h"
#import "UIColor+CustomColors.h"
#import "UIFont+AppFont.h"

@implementation RSButton

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.backgroundColor = UIColor.whiteColor;
        
        [self setTitleColor:[UIColor lightGreenSea] forState:UIControlStateNormal];
        self.titleLabel.font = [UIFont montserratMediumWithSize:18];
        
        self.layer.cornerRadius = 8;
        
        self.layer.shadowColor = [UIColor greyShadowColor].CGColor;
        self.layer.shadowRadius = 2;
        self.layer.shadowOffset = CGSizeMake(0, 0);
        self.layer.shadowOpacity = 1;
        
        self.contentEdgeInsets = UIEdgeInsetsMake(5, 21, 5, 21);
    }
    return self;
}

- (void)setHighlighted:(BOOL)highlighted
{
    [super setHighlighted:highlighted];
    
    if (highlighted) {
        self.layer.shadowColor = [UIColor lightGreenSea].CGColor;
        self.layer.shadowRadius = 4;
    } else {
        self.layer.shadowColor = [UIColor greyShadowColor].CGColor;
        self.layer.shadowRadius = 2;
    }
}

- (void)setEnabled:(BOOL)enabled
{
    [super setEnabled:enabled];
    
    if (enabled) {
        self.alpha = 1;
    } else {
        self.alpha = 0.25;
    }
}

@end
