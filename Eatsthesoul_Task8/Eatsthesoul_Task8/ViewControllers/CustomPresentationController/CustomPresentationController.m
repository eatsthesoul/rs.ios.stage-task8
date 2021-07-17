//
//  CustomPresentationController.m
//  Eatsthesoul_Task8
//
//  Created by Evgeniy Petlitskiy on 17.07.21.
//

#import "CustomPresentationController.h"

@implementation CustomPresentationController

- (CGRect)frameOfPresentedViewInContainerView {
    return CGRectMake(0, self.containerView.bounds.size.height - 333.5 + 40, self.containerView.bounds.size.width, 333.5);
}
@end
