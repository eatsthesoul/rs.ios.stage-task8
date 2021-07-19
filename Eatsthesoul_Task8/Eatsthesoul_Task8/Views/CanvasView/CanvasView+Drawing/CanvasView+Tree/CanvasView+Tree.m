//
//  CanvasView+Tree.m
//  Eatsthesoul_Task8
//
//  Created by Evgeniy Petlitskiy on 19.07.21.
//

#import "CanvasView+Tree.h"

@implementation CanvasView (Tree)

- (void)getTreeVectorWithColors:(NSArray<UIColor*>*)colors {
    [self removeLayers];

    self.shape1Layer.strokeEnd = 0;
    self.shape1Layer.lineWidth = 0.5;
    self.shape1Layer.path = [self getGrassVector].CGPath;
    self.shape1Layer.fillColor = UIColor.clearColor.CGColor;
    self.shape1Layer.strokeColor = colors[0].CGColor;
    self.shape1Layer.position = CGPointMake(39.5, 246.17);
    
    self.shape2Layer.strokeEnd = 0;
    self.shape2Layer.path = [self getTreeVector].CGPath;
    self.shape2Layer.fillColor = UIColor.clearColor.CGColor;
    self.shape2Layer.strokeColor = colors[1].CGColor;
    self.shape2Layer.position = CGPointMake(50, 145.5);
    
    self.shape3Layer.strokeEnd = 0;
    self.shape3Layer.path = [self getLeafsVector].CGPath;
    self.shape3Layer.fillColor = UIColor.clearColor.CGColor;
    self.shape3Layer.strokeColor = colors[2].CGColor;
    self.shape3Layer.position = CGPointMake(24, 22.5);
    

    [self addLayers];
}

- (UIBezierPath *)getGrassVector {
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(60.25, 6.75)];
    [bezierPath addCurveToPoint: CGPointMake(26.75, 12.06) controlPoint1: CGPointMake(52.25, -1.75) controlPoint2: CGPointMake(37.15, -1.14)];
    [bezierPath moveToPoint: CGPointMake(0.25, 18.25)];
    [bezierPath addCurveToPoint: CGPointMake(24.25, 11.25) controlPoint1: CGPointMake(3.58, 14.42) controlPoint2: CGPointMake(13.05, 7.65)];
    [bezierPath addCurveToPoint: CGPointMake(34.75, 15.25) controlPoint1: CGPointMake(35.45, 14.85) controlPoint2: CGPointMake(35.92, 15.42)];
    [bezierPath moveToPoint: CGPointMake(138.75, 3.75)];
    [bezierPath addCurveToPoint: CGPointMake(162.25, 3.75) controlPoint1: CGPointMake(143.75, 0.98) controlPoint2: CGPointMake(155.45, -2.9)];
    [bezierPath addCurveToPoint: CGPointMake(167.49, 9.75) controlPoint1: CGPointMake(164.53, 5.98) controlPoint2: CGPointMake(166.23, 7.99)];
    [bezierPath moveToPoint: CGPointMake(170.75, 16.75)];
    [bezierPath addCurveToPoint: CGPointMake(167.49, 9.75) controlPoint1: CGPointMake(170.75, 15.71) controlPoint2: CGPointMake(170, 13.24)];
    [bezierPath moveToPoint: CGPointMake(167.49, 9.75)];
    [bezierPath addCurveToPoint: CGPointMake(202.25, 11.25) controlPoint1: CGPointMake(179.08, 6.58) controlPoint2: CGPointMake(202.25, 2.45)];
    [bezierPath addCurveToPoint: CGPointMake(185.25, 19.25) controlPoint1: CGPointMake(202.25, 20.05) controlPoint2: CGPointMake(186.58, 18.42)];
    bezierPath.miterLimit = 4;
    bezierPath.lineCapStyle = kCGLineCapRound;
    return bezierPath;
}

- (UIBezierPath *)getTreeVector {
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(33, 114.5)];
    [bezierPath addCurveToPoint: CGPointMake(94.5, 51.5) controlPoint1: CGPointMake(52.83, 108.67) controlPoint2: CGPointMake(92.9, 87.9)];
    [bezierPath addCurveToPoint: CGPointMake(84.5, 4.5) controlPoint1: CGPointMake(96.1, 15.1) controlPoint2: CGPointMake(88.5, 5)];
    [bezierPath moveToPoint: CGPointMake(176.5, 120)];
    [bezierPath addCurveToPoint: CGPointMake(123, 91) controlPoint1: CGPointMake(158.17, 119) controlPoint2: CGPointMake(121.8, 111.8)];
    [bezierPath addCurveToPoint: CGPointMake(134, 32.5) controlPoint1: CGPointMake(124.2, 70.2) controlPoint2: CGPointMake(130.83, 43.33)];
    [bezierPath addCurveToPoint: CGPointMake(143.5, 20.5) controlPoint1: CGPointMake(136.17, 28.17) controlPoint2: CGPointMake(141.1, 19.7)];
    [bezierPath moveToPoint: CGPointMake(109.5, 29)];
    [bezierPath addCurveToPoint: CGPointMake(102, 78) controlPoint1: CGPointMake(108, 44.17) controlPoint2: CGPointMake(104.4, 75.2)];
    [bezierPath moveToPoint: CGPointMake(114.5, 103.5)];
    [bezierPath addCurveToPoint: CGPointMake(119.5, 32.5) controlPoint1: CGPointMake(114.5, 95.5) controlPoint2: CGPointMake(113.5, 47)];
    [bezierPath moveToPoint: CGPointMake(96, 71.5)];
    [bezierPath addCurveToPoint: CGPointMake(75.5, 100.5) controlPoint1: CGPointMake(83, 90.5) controlPoint2: CGPointMake(81.5, 95)];
    bezierPath.miterLimit = 4;
    bezierPath.lineCapStyle = kCGLineCapRound;
    return bezierPath;
}

- (UIBezierPath *)getLeafsVector {
    UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
    [bezier2Path moveToPoint: CGPointMake(192.92, 53.45)];
    [bezier2Path addCurveToPoint: CGPointMake(197, 43.5) controlPoint1: CGPointMake(195.45, 50.77) controlPoint2: CGPointMake(197, 47.3)];
    [bezier2Path addCurveToPoint: CGPointMake(179.5, 28) controlPoint1: CGPointMake(197, 34.82) controlPoint2: CGPointMake(189.04, 28)];
    [bezier2Path addCurveToPoint: CGPointMake(174.72, 28.58) controlPoint1: CGPointMake(177.84, 28) controlPoint2: CGPointMake(176.24, 28.2)];
    [bezier2Path addCurveToPoint: CGPointMake(158.5, 15) controlPoint1: CGPointMake(175.36, 21.29) controlPoint2: CGPointMake(167.67, 15)];
    [bezier2Path addCurveToPoint: CGPointMake(150.16, 16.87) controlPoint1: CGPointMake(155.49, 15) controlPoint2: CGPointMake(152.65, 15.67)];
    [bezier2Path addCurveToPoint: CGPointMake(139.5, 13) controlPoint1: CGPointMake(148.11, 14.5) controlPoint2: CGPointMake(144, 13)];
    [bezier2Path addCurveToPoint: CGPointMake(134.72, 13.58) controlPoint1: CGPointMake(137.84, 13) controlPoint2: CGPointMake(136.24, 13.2)];
    [bezier2Path addCurveToPoint: CGPointMake(118.5, 0) controlPoint1: CGPointMake(135.36, 6.29) controlPoint2: CGPointMake(127.67, 0)];
    [bezier2Path addCurveToPoint: CGPointMake(103.78, 7.11) controlPoint1: CGPointMake(112.35, 0) controlPoint2: CGPointMake(106.91, 2.81)];
    [bezier2Path addCurveToPoint: CGPointMake(99.5, 6) controlPoint1: CGPointMake(103.17, 6.26) controlPoint2: CGPointMake(101.37, 6)];
    [bezier2Path addCurveToPoint: CGPointMake(89.27, 8.92) controlPoint1: CGPointMake(95.69, 6) controlPoint2: CGPointMake(92.15, 7.08)];
    [bezier2Path addCurveToPoint: CGPointMake(84.5, 8) controlPoint1: CGPointMake(88.33, 8.28) controlPoint2: CGPointMake(86.45, 8)];
    [bezier2Path addCurveToPoint: CGPointMake(69.78, 15.11) controlPoint1: CGPointMake(78.35, 8) controlPoint2: CGPointMake(72.91, 10.81)];
    [bezier2Path addCurveToPoint: CGPointMake(65.5, 14) controlPoint1: CGPointMake(69.17, 14.26) controlPoint2: CGPointMake(67.37, 14)];
    [bezier2Path addCurveToPoint: CGPointMake(48, 29.5) controlPoint1: CGPointMake(55.96, 14) controlPoint2: CGPointMake(48, 20.82)];
    [bezier2Path addCurveToPoint: CGPointMake(48.01, 30.06) controlPoint1: CGPointMake(48, 29.69) controlPoint2: CGPointMake(48, 29.88)];
    [bezier2Path addCurveToPoint: CGPointMake(46.78, 31.11) controlPoint1: CGPointMake(47.75, 29.88) controlPoint2: CGPointMake(47.24, 30.48)];
    [bezier2Path addCurveToPoint: CGPointMake(42.5, 30) controlPoint1: CGPointMake(46.17, 30.26) controlPoint2: CGPointMake(44.37, 30)];
    [bezier2Path addCurveToPoint: CGPointMake(25, 45.5) controlPoint1: CGPointMake(32.96, 30) controlPoint2: CGPointMake(25, 36.82)];
    [bezier2Path addCurveToPoint: CGPointMake(26.7, 52.18) controlPoint1: CGPointMake(25, 47.89) controlPoint2: CGPointMake(25.61, 50.16)];
    [bezier2Path addCurveToPoint: CGPointMake(24, 59.5) controlPoint1: CGPointMake(25.02, 53.53) controlPoint2: CGPointMake(24, 56.4)];
    [bezier2Path addCurveToPoint: CGPointMake(25.28, 65.34) controlPoint1: CGPointMake(24, 61.57) controlPoint2: CGPointMake(24.46, 63.54)];
    [bezier2Path addCurveToPoint: CGPointMake(22, 73.5) controlPoint1: CGPointMake(23.28, 66.85) controlPoint2: CGPointMake(22, 70.04)];
    [bezier2Path addCurveToPoint: CGPointMake(23.7, 80.18) controlPoint1: CGPointMake(22, 75.89) controlPoint2: CGPointMake(22.61, 78.16)];
    [bezier2Path addCurveToPoint: CGPointMake(21, 87.5) controlPoint1: CGPointMake(22.02, 81.53) controlPoint2: CGPointMake(21, 84.4)];
    [bezier2Path addCurveToPoint: CGPointMake(38.5, 103) controlPoint1: CGPointMake(21, 96.18) controlPoint2: CGPointMake(28.96, 103)];
    [bezier2Path addCurveToPoint: CGPointMake(40.79, 102.87) controlPoint1: CGPointMake(39.28, 103) controlPoint2: CGPointMake(40.04, 102.95)];
    [bezier2Path addCurveToPoint: CGPointMake(55.5, 111) controlPoint1: CGPointMake(42.68, 107.52) controlPoint2: CGPointMake(48.66, 111)];
    [bezier2Path addCurveToPoint: CGPointMake(63.78, 109.16) controlPoint1: CGPointMake(58.49, 111) controlPoint2: CGPointMake(61.31, 110.33)];
    [bezier2Path addCurveToPoint: CGPointMake(78.5, 118) controlPoint1: CGPointMake(65.17, 114.22) controlPoint2: CGPointMake(71.37, 118)];
    [bezier2Path addCurveToPoint: CGPointMake(80.79, 117.87) controlPoint1: CGPointMake(79.28, 118) controlPoint2: CGPointMake(80.04, 117.95)];
    [bezier2Path addCurveToPoint: CGPointMake(95.5, 126) controlPoint1: CGPointMake(82.68, 122.52) controlPoint2: CGPointMake(88.66, 126)];
    [bezier2Path addCurveToPoint: CGPointMake(104.47, 123.81) controlPoint1: CGPointMake(98.77, 126) controlPoint2: CGPointMake(101.84, 125.2)];
    [bezier2Path addCurveToPoint: CGPointMake(108.45, 125.58) controlPoint1: CGPointMake(105.04, 124.61) controlPoint2: CGPointMake(106.7, 125.22)];
    [bezier2Path addCurveToPoint: CGPointMake(121.5, 131) controlPoint1: CGPointMake(111.14, 128.79) controlPoint2: CGPointMake(116.04, 131)];
    [bezier2Path addCurveToPoint: CGPointMake(129.78, 129.16) controlPoint1: CGPointMake(124.49, 131) controlPoint2: CGPointMake(127.31, 130.34)];
    [bezier2Path addCurveToPoint: CGPointMake(144.5, 138) controlPoint1: CGPointMake(131.17, 134.22) controlPoint2: CGPointMake(137.37, 138)];
    [bezier2Path addCurveToPoint: CGPointMake(146.79, 137.87) controlPoint1: CGPointMake(145.28, 138) controlPoint2: CGPointMake(146.04, 137.96)];
    [bezier2Path addCurveToPoint: CGPointMake(161.5, 146) controlPoint1: CGPointMake(148.68, 142.52) controlPoint2: CGPointMake(154.66, 146)];
    [bezier2Path addCurveToPoint: CGPointMake(170.47, 143.81) controlPoint1: CGPointMake(164.77, 146) controlPoint2: CGPointMake(167.84, 145.21)];
    [bezier2Path addCurveToPoint: CGPointMake(178.5, 146) controlPoint1: CGPointMake(172.16, 145.21) controlPoint2: CGPointMake(175.23, 146)];
    [bezier2Path addCurveToPoint: CGPointMake(196, 130.5) controlPoint1: CGPointMake(188.04, 146) controlPoint2: CGPointMake(196, 139.18)];
    [bezier2Path addCurveToPoint: CGPointMake(195.99, 129.95) controlPoint1: CGPointMake(196, 130.32) controlPoint2: CGPointMake(196, 130.13)];
    [bezier2Path addCurveToPoint: CGPointMake(195.5, 131) controlPoint1: CGPointMake(195.14, 131) controlPoint2: CGPointMake(195.32, 131)];
    [bezier2Path addCurveToPoint: CGPointMake(204.47, 128.81) controlPoint1: CGPointMake(198.77, 131) controlPoint2: CGPointMake(201.84, 130.21)];
    [bezier2Path addCurveToPoint: CGPointMake(212.5, 131) controlPoint1: CGPointMake(206.16, 130.21) controlPoint2: CGPointMake(209.23, 131)];
    [bezier2Path addCurveToPoint: CGPointMake(230, 115.5) controlPoint1: CGPointMake(222.04, 131) controlPoint2: CGPointMake(230, 124.18)];
    [bezier2Path addCurveToPoint: CGPointMake(229.63, 112.33) controlPoint1: CGPointMake(230, 114.42) controlPoint2: CGPointMake(229.87, 113.36)];
    [bezier2Path addCurveToPoint: CGPointMake(237, 100.5) controlPoint1: CGPointMake(233.85, 110.67) controlPoint2: CGPointMake(237, 105.94)];
    [bezier2Path addCurveToPoint: CGPointMake(232.92, 90.55) controlPoint1: CGPointMake(237, 96.7) controlPoint2: CGPointMake(235.45, 93.23)];
    [bezier2Path addCurveToPoint: CGPointMake(240, 79.5) controlPoint1: CGPointMake(237.1, 89.29) controlPoint2: CGPointMake(240, 84.72)];
    [bezier2Path addCurveToPoint: CGPointMake(222.5, 64) controlPoint1: CGPointMake(240, 70.82) controlPoint2: CGPointMake(232.04, 64)];
    [bezier2Path addCurveToPoint: CGPointMake(217.72, 64.58) controlPoint1: CGPointMake(220.84, 64) controlPoint2: CGPointMake(219.24, 64.2)];
    [bezier2Path addCurveToPoint: CGPointMake(201.5, 51) controlPoint1: CGPointMake(218.36, 57.29) controlPoint2: CGPointMake(210.67, 51)];
    [bezier2Path addCurveToPoint: CGPointMake(193.16, 52.87) controlPoint1: CGPointMake(198.49, 51) controlPoint2: CGPointMake(195.65, 51.67)];
    [bezier2Path addCurveToPoint: CGPointMake(192.73, 51.92) controlPoint1: CGPointMake(193.75, 52.61) controlPoint2: CGPointMake(193.25, 52.25)];
    return bezier2Path;
}
@end
