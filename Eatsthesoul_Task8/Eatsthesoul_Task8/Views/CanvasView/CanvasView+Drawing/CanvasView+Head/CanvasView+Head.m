//
//  CanvasView+Head.m
//  Eatsthesoul_Task8
//
//  Created by Evgeniy Petlitskiy on 19.07.21.
//

#import "CanvasView+Head.h"

@implementation CanvasView (Head)

- (void)getHeadVectorWithColors:(NSArray<UIColor*>*)colors {
    [self removeLayers];

    self.shape1Layer.strokeEnd = 0;
    self.shape1Layer.path = [self getHeadChinVector].CGPath;
    self.shape1Layer.fillColor = UIColor.clearColor.CGColor;
    self.shape1Layer.strokeColor = colors[0].CGColor;
    self.shape1Layer.lineWidth = 1.0;
    self.shape1Layer.position = CGPointMake(61.5, 29);
    
    self.shape2Layer.strokeEnd = 0;
    self.shape2Layer.path = [self getLipsHeadVector].CGPath;
    self.shape2Layer.fillColor = UIColor.clearColor.CGColor;
    self.shape2Layer.strokeColor = colors[1].CGColor;
    self.shape2Layer.lineWidth = 1.0;
    self.shape2Layer.position = CGPointMake(118, 81);
    
    self.shape3Layer.strokeEnd = 0;
    self.shape3Layer.path = [self getHeadNeckVector].CGPath;
    self.shape3Layer.fillColor = UIColor.clearColor.CGColor;
    self.shape3Layer.strokeColor = colors[2].CGColor;
    self.shape3Layer.lineWidth = 1.0;
    self.shape3Layer.position = CGPointMake(63.5, 102.5);

    [self addLayers];
}


//MARK: - Paths
- (UIBezierPath *)getHeadChinVector {
    UIBezierPath *shape = [[UIBezierPath alloc] init];
    [shape moveToPoint:CGPointMake(0.5, 1)];
    [shape addLineToPoint:CGPointMake(16, 61)];
    [shape addLineToPoint:CGPointMake(28, 84)];
    [shape addLineToPoint:CGPointMake(45.5, 103.5)];
    [shape addLineToPoint:CGPointMake(72.5, 126)];
    [shape addLineToPoint:CGPointMake(96, 131.5)];
    [shape addLineToPoint:CGPointMake(132, 114)];
    [shape addLineToPoint:CGPointMake(159, 84)];
    [shape addLineToPoint:CGPointMake(167.5, 72)];
    [shape addLineToPoint:CGPointMake(167.5, 49.5)];
    [shape addLineToPoint:CGPointMake(169.5, 22.5)];
    [shape addLineToPoint:CGPointMake(157.5, 12.5)];
    [shape addLineToPoint:CGPointMake(141, 15.5)];
    [shape addLineToPoint:CGPointMake(130, 32.5)];
    [shape addLineToPoint:CGPointMake(128, 55.5)];
    [shape addLineToPoint:CGPointMake(132, 68)];
    shape.miterLimit = 4;
    shape.lineCapStyle = kCGLineCapRound;
    return shape;
}

- (UIBezierPath *)getLipsHeadVector {
    UIBezierPath *shape = [[UIBezierPath alloc] init];
    [shape moveToPoint:CGPointMake(68, 20)];
    [shape addLineToPoint: CGPointMake(59.5, 18.5)];
    [shape addLineToPoint: CGPointMake(50, 20.5)];
    [shape addLineToPoint: CGPointMake(42, 21.5)];
    [shape addLineToPoint: CGPointMake(32.5, 20.5)];
    [shape addLineToPoint: CGPointMake(24, 19)];
    [shape addLineToPoint: CGPointMake(17.5, 18.5)];
    [shape addLineToPoint: CGPointMake(10, 20)];
    [shape addLineToPoint: CGPointMake(5.5, 22)];
    [shape addLineToPoint: CGPointMake(11.5, 24.5)];
    [shape addLineToPoint: CGPointMake(16, 28)];
    [shape addLineToPoint: CGPointMake(20.5, 33)];
    [shape addLineToPoint: CGPointMake(26.5, 35.5)];
    [shape addLineToPoint: CGPointMake(34, 36.5)];
    [shape addLineToPoint: CGPointMake(41, 35.5)];
    [shape addLineToPoint: CGPointMake(48.5, 36.5)];
    [shape addLineToPoint: CGPointMake(54.5, 35.5)];
    [shape addLineToPoint: CGPointMake(61, 31.5)];
    [shape addLineToPoint: CGPointMake(68, 23.5)];
    [shape addLineToPoint: CGPointMake(72.5, 17.5)];
    [shape addLineToPoint: CGPointMake(64.5, 16.5)];
    [shape addLineToPoint: CGPointMake(55.5, 15.5)];
    [shape addLineToPoint: CGPointMake(46.5, 13.5)];
    [shape addLineToPoint: CGPointMake(38, 13)];
    [shape addLineToPoint: CGPointMake(28, 14.5)];
    [shape addLineToPoint: CGPointMake(19, 16.5)];
    [shape addLineToPoint: CGPointMake(9, 17.5)];
    [shape addLineToPoint: CGPointMake(2, 17)];
    [shape addLineToPoint: CGPointMake(11.5, 11)];
    [shape addLineToPoint: CGPointMake(20.5, 4.5)];
    [shape addLineToPoint: CGPointMake(26.5, 1)];
    [shape addLineToPoint: CGPointMake(31.5, 2.5)];
    [shape addLineToPoint: CGPointMake(37, 4.5)];
    [shape addLineToPoint: CGPointMake(43.5, 3.5)];
    [shape addLineToPoint: CGPointMake(50, 2.5)];
    [shape addLineToPoint: CGPointMake(55.5, 2.5)];
    [shape addLineToPoint: CGPointMake(58.5, 4.5)];
    [shape addLineToPoint: CGPointMake(63.5, 9.5)];
    [shape addLineToPoint: CGPointMake(71, 14)];
    shape.miterLimit = 4;
    shape.lineCapStyle = kCGLineCapRound;
    return shape;
}

- (UIBezierPath *)getHeadNeckVector {
    UIBezierPath *shape = [[UIBezierPath alloc] init];
    [shape moveToPoint:CGPointMake(127.5, 0.5)];
    [shape addLineToPoint: CGPointMake(132, 6.5)];
    [shape addLineToPoint: CGPointMake(134.5, 13)];
    [shape addLineToPoint: CGPointMake(131, 22)];
    [shape addLineToPoint: CGPointMake(124, 30.5)];
    [shape addLineToPoint: CGPointMake(115, 37.5)];
    [shape addLineToPoint: CGPointMake(105.5, 30.5)];
    [shape addLineToPoint: CGPointMake(95, 26.5)];
    [shape addLineToPoint: CGPointMake(85.5, 26.5)];
    [shape addLineToPoint: CGPointMake(73.5, 30.5)];
    [shape addLineToPoint: CGPointMake(65.5, 40)];
    [shape addLineToPoint: CGPointMake(59, 52.5)];
    [shape addLineToPoint: CGPointMake(47.5, 45.5)];
    [shape addLineToPoint: CGPointMake(39.5, 35.5)];
    [shape addLineToPoint: CGPointMake(31, 26.5)];
    [shape addLineToPoint: CGPointMake(31, 40)];
    [shape addLineToPoint: CGPointMake(31, 68.5)];
    [shape addLineToPoint: CGPointMake(31, 85.5)];
    [shape addLineToPoint: CGPointMake(24, 97)];
    [shape addLineToPoint: CGPointMake(12.5, 105.5)];
    [shape addLineToPoint: CGPointMake(1.5, 112.5)];
    [shape addLineToPoint: CGPointMake(19, 119)];
    [shape addLineToPoint: CGPointMake(32.5, 127.5)];
    [shape addLineToPoint: CGPointMake(43, 141.5)];
    [shape addLineToPoint: CGPointMake(57, 159)];
    [shape addLineToPoint: CGPointMake(76, 177)];
    [shape addLineToPoint: CGPointMake(95, 183.5)];
    [shape addLineToPoint: CGPointMake(109, 183.5)];
    [shape addLineToPoint: CGPointMake(124, 175.5)];
    [shape addLineToPoint: CGPointMake(137.5, 159)];
    [shape addLineToPoint: CGPointMake(147.5, 137.5)];
    [shape addLineToPoint: CGPointMake(157, 121.5)];
    [shape addLineToPoint: CGPointMake(171.5, 115)];
    [shape addLineToPoint: CGPointMake(175, 115.5)];
    [shape addLineToPoint: CGPointMake(168.5, 99.5)];
    [shape addLineToPoint: CGPointMake(159, 71)];
    [shape addLineToPoint: CGPointMake(157, 48)];
    [shape addLineToPoint: CGPointMake(157, 24.5)];
    [shape addLineToPoint: CGPointMake(150, 35.5)];
    [shape addLineToPoint: CGPointMake(142, 43.5)];
    [shape addLineToPoint: CGPointMake(134.5, 52.5)];
    [shape addLineToPoint: CGPointMake(118, 68.5)];
    [shape addLineToPoint: CGPointMake(108, 83)];
    [shape addLineToPoint: CGPointMake(99.5, 104.5)];
    [shape addLineToPoint: CGPointMake(96.5, 130.5)];
    [shape addLineToPoint: CGPointMake(96.5, 159)];
    [shape addLineToPoint: CGPointMake(96.5, 177)];
    shape.miterLimit = 4;
    shape.lineCapStyle = kCGLineCapRound;
    return shape;
}

@end
