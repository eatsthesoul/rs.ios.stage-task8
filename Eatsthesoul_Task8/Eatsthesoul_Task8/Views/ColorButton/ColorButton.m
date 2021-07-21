//
//  ColorButton.m
//  Eatsthesoul_Task8
//
//  Created by Evgeniy Petlitskiy on 17.07.21.
//

#import "ColorButton.h"
#import "UIColor+CustomColors.h"

@interface ColorButton ()

@property (nonatomic, assign, readwrite) BOOL isPressed;
@property (nonatomic, strong) NSArray *defaultEnteredViewInsets;
@property (nonatomic, strong) NSArray *pressedEnteredViewInsets;

@end

@implementation ColorButton

- (CGSize)intrinsicContentSize {
    return CGSizeMake(40, 40);
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.backgroundColor = UIColor.whiteColor;
        
        _isPressed = NO;
        
        self.layer.cornerRadius = 10;
        
        self.layer.shadowColor = [UIColor greyShadowColor].CGColor;
        self.layer.shadowRadius = 2;
        self.layer.shadowOffset = CGSizeMake(0, 0);
        self.layer.shadowOpacity = 1;
        
        [self setContentCompressionResistancePriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisHorizontal];
        [self setContentCompressionResistancePriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisVertical];
        
        //enteredView
        _enteredView = [[UIView alloc] init];
        _enteredView.translatesAutoresizingMaskIntoConstraints = NO;
        _enteredView.userInteractionEnabled = NO;
        
        _enteredView.backgroundColor = [UIColor blackColor];
        _enteredView.layer.cornerRadius = 6;
        
        [self addSubview:_enteredView];
        
        _defaultEnteredViewInsets = @[[_enteredView.heightAnchor constraintEqualToConstant:24],
                                      [_enteredView.widthAnchor constraintEqualToConstant:24]];
        _pressedEnteredViewInsets = @[[_enteredView.heightAnchor constraintEqualToConstant:36],
                                      [_enteredView.widthAnchor constraintEqualToConstant:36]];
        
        [NSLayoutConstraint activateConstraints:@[
            [_enteredView.centerXAnchor constraintEqualToAnchor:self.centerXAnchor],
            [_enteredView.centerYAnchor constraintEqualToAnchor:self.centerYAnchor],
        ]];
        [NSLayoutConstraint activateConstraints:_defaultEnteredViewInsets];
    }
    return self;
}

- (instancetype)initWithColor:(UIColor *)color
{
    self = [self init];
    if (self) {
        _enteredView.backgroundColor = color;
    }
    return self;
}

- (void)press {
    if (self.isPressed) {

        self.isPressed = NO;

        [UIView animateWithDuration:0.09 animations:^{
            [NSLayoutConstraint deactivateConstraints:self.pressedEnteredViewInsets];
            [NSLayoutConstraint activateConstraints:self.defaultEnteredViewInsets];
            self.enteredView.layer.cornerRadius = 6;
            [self layoutIfNeeded];
        }];
        
    } else {
        
        self.isPressed = YES;
        
        [UIView animateWithDuration:0.09 animations:^{
            [NSLayoutConstraint deactivateConstraints:self.defaultEnteredViewInsets];
            [NSLayoutConstraint activateConstraints:self.pressedEnteredViewInsets];
            self.enteredView.layer.cornerRadius = 8;
            [self layoutIfNeeded];
        }];
    }
}

@end
