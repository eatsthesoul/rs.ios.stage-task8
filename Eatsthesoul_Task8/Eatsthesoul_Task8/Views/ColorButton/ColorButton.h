//
//  ColorButton.h
//  Eatsthesoul_Task8
//
//  Created by Evgeniy Petlitskiy on 17.07.21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ColorButton : UIButton

@property (nonatomic, strong) UIView *enteredView;
@property (nonatomic, assign, readonly) BOOL isPressed;

- (instancetype)initWithColor:(UIColor *)color;
- (void)press;

@end

NS_ASSUME_NONNULL_END
