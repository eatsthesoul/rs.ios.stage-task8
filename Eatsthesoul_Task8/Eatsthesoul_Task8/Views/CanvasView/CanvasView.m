//
//  CanvasView.m
//  Eatsthesoul_Task8
//
//  Created by Evgeniy Petlitskiy on 16.07.21.
//

#import "CanvasView.h"
#import "UIColor+CustomColors.h"
#import "CanvasView+Head.h"

@implementation CanvasView

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.backgroundColor = UIColor.whiteColor;
        self.layer.cornerRadius = 8;
        self.layer.shadowRadius = 8;
        self.layer.shadowOpacity = 1;
        self.layer.shadowOffset = CGSizeMake(0, 0);
        self.layer.shadowColor = [UIColor canvasShadowColor].CGColor;
        
        self.shape1Layer = [[CAShapeLayer alloc] init];
        self.shape2Layer = [[CAShapeLayer alloc] init];
        self.shape3Layer = [[CAShapeLayer alloc] init];
    }
    return self;
}

- (void)setupLayersStrokeEnd:(float)strokeEnd {
    self.shape1Layer.strokeEnd = strokeEnd;
    self.shape2Layer.strokeEnd = strokeEnd;
    self.shape3Layer.strokeEnd = strokeEnd;
}

- (void)addLayers {
    [self.layer addSublayer:self.shape1Layer];
    [self.layer addSublayer:self.shape2Layer];
    [self.layer addSublayer:self.shape3Layer];
}

- (void)removeLayers {
    [self.shape1Layer removeFromSuperlayer];
    [self.shape2Layer removeFromSuperlayer];
    [self.shape3Layer removeFromSuperlayer];

}

@end
