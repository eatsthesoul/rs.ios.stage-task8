//
//  CanvasView.m
//  Eatsthesoul_Task8
//
//  Created by Evgeniy Petlitskiy on 16.07.21.
//

#import "CanvasView.h"

@implementation CanvasView

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.layer.cornerRadius = 8;
        self.layer.shadowRadius = 8;
        self.layer.shadowOpacity = 1;
        self.layer.shadowOffset = CGSizeMake(0, 0);
        self.layer.shadowColor = [[UIColor colorWithRed:0 green:178 blue:255 alpha:0.25] CGColor];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
