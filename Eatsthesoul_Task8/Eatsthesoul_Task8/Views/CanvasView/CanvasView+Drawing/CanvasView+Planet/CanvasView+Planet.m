//
//  CanvasView+Planet.m
//  Eatsthesoul_Task8
//
//  Created by Evgeniy Petlitskiy on 19.07.21.
//

#import "CanvasView+Planet.h"

@implementation CanvasView (Planet)

- (void)getPlanetVectorWithColors:(NSArray<UIColor*>*)colors {
    [self removeLayers];

    self.shape1Layer.strokeEnd = 0;
    self.shape1Layer.lineWidth = 1.0;
    self.shape1Layer.path = [self getAsteroidsVector].CGPath;
    self.shape1Layer.fillColor = UIColor.clearColor.CGColor;
    self.shape1Layer.strokeColor = colors[0].CGColor;
    self.shape1Layer.position = CGPointMake(30, 40);
    
    self.shape2Layer.strokeEnd = 0;
    self.shape2Layer.lineWidth = 1.0;
    self.shape2Layer.path = [self getWindsVector].CGPath;
    self.shape2Layer.fillColor = UIColor.clearColor.CGColor;
    self.shape2Layer.strokeColor = colors[1].CGColor;
    self.shape2Layer.position = CGPointMake(10, 60);
    
    self.shape3Layer.strokeEnd = 0;
    self.shape3Layer.lineWidth = 1.0;
    self.shape3Layer.path = [self getPlanetVector].CGPath;
    self.shape3Layer.fillColor = UIColor.clearColor.CGColor;
    self.shape3Layer.strokeColor = colors[2].CGColor;
    self.shape3Layer.position = CGPointMake(24, 60);

    [self addLayers];
}

- (UIBezierPath*)getAsteroidsVector {
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(221.5, 131)];
    [bezierPath addLineToPoint: CGPointMake(226.5, 127.5)];
    [bezierPath addLineToPoint: CGPointMake(233.5, 128)];
    [bezierPath addLineToPoint: CGPointMake(238, 131.5)];
    [bezierPath addLineToPoint: CGPointMake(239.5, 136.5)];
    [bezierPath addLineToPoint: CGPointMake(238.5, 141)];
    [bezierPath addLineToPoint: CGPointMake(235.5, 145.5)];
    [bezierPath addLineToPoint: CGPointMake(230.5, 147)];
    [bezierPath addLineToPoint: CGPointMake(224.5, 146)];
    [bezierPath addLineToPoint: CGPointMake(220.5, 142)];
    [bezierPath addLineToPoint: CGPointMake(219, 137)];
    [bezierPath addLineToPoint: CGPointMake(221.5, 131)];
    [bezierPath closePath];
    
    [bezierPath moveToPoint: CGPointMake(209, 161)];
    [bezierPath addLineToPoint: CGPointMake(211, 159)];
    [bezierPath addLineToPoint: CGPointMake(213.5, 159)];
    [bezierPath addLineToPoint: CGPointMake(215.5, 160.5)];
    [bezierPath addLineToPoint: CGPointMake(216, 163)];
    [bezierPath addLineToPoint: CGPointMake(215, 165)];
    [bezierPath addLineToPoint: CGPointMake(212.5, 166)];
    [bezierPath addLineToPoint: CGPointMake(210, 165.5)];
    [bezierPath addLineToPoint: CGPointMake(208.5, 163.5)];
    [bezierPath addLineToPoint: CGPointMake(209, 161)];
    [bezierPath closePath];
    
    [bezierPath moveToPoint: CGPointMake(43.5, 192)];
    [bezierPath addLineToPoint: CGPointMake(45.5, 191)];
    [bezierPath addLineToPoint: CGPointMake(48.5, 192)];
    [bezierPath addCurveToPoint: CGPointMake(50, 194.5) controlPoint1: CGPointMake(49, 192.67) controlPoint2: CGPointMake(50, 194.1)];
    [bezierPath addCurveToPoint: CGPointMake(50, 197.5) controlPoint1: CGPointMake(50, 194.9) controlPoint2: CGPointMake(50.17, 196.83)];
    [bezierPath addLineToPoint: CGPointMake(47.5, 199)];
    [bezierPath addLineToPoint: CGPointMake(44, 199)];
    [bezierPath addLineToPoint: CGPointMake(42.5, 197)];
    [bezierPath addLineToPoint: CGPointMake(42, 194.5)];
    [bezierPath addLineToPoint: CGPointMake(43.5, 192)];
    [bezierPath closePath];
    
    [bezierPath moveToPoint: CGPointMake(4.5, 26.5)];
    [bezierPath addCurveToPoint: CGPointMake(10.5, 22) controlPoint1: CGPointMake(6.33, 25) controlPoint2: CGPointMake(10.1, 22)];
    [bezierPath addLineToPoint: CGPointMake(17, 21)];
    [bezierPath addLineToPoint: CGPointMake(23.5, 23)];
    [bezierPath addLineToPoint: CGPointMake(29.5, 30)];
    [bezierPath addLineToPoint: CGPointMake(30, 39.5)];
    [bezierPath addLineToPoint: CGPointMake(26, 47)];
    [bezierPath addLineToPoint: CGPointMake(17.5, 51)];
    [bezierPath addLineToPoint: CGPointMake(8.5, 49)];
    [bezierPath addLineToPoint: CGPointMake(2.5, 44.5)];
    [bezierPath addLineToPoint: CGPointMake(0.5, 35.5)];
    [bezierPath addLineToPoint: CGPointMake(4.5, 26.5)];
    [bezierPath closePath];
    
    [bezierPath moveToPoint: CGPointMake(186, 1)];
    [bezierPath addCurveToPoint: CGPointMake(191.5, 0) controlPoint1: CGPointMake(187, 0.67) controlPoint2: CGPointMake(191.1, 0)];
    [bezierPath addLineToPoint: CGPointMake(196, 3)];
    [bezierPath addLineToPoint: CGPointMake(196.5, 8)];
    [bezierPath addLineToPoint: CGPointMake(194.5, 12)];
    [bezierPath addLineToPoint: CGPointMake(189.5, 13.5)];
    [bezierPath addLineToPoint: CGPointMake(184.5, 11)];
    [bezierPath addLineToPoint: CGPointMake(183, 5.5)];
    [bezierPath addLineToPoint: CGPointMake(186, 1)];
    [bezierPath closePath];
    
    return bezierPath;
}

- (UIBezierPath*)getWindsVector {
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(144, 48.5)];
    [bezierPath addLineToPoint: CGPointMake(150, 45.5)];
    [bezierPath addLineToPoint: CGPointMake(159.5, 40)];
    [bezierPath addLineToPoint: CGPointMake(169, 33)];
    [bezierPath addLineToPoint: CGPointMake(175.5, 26)];
    [bezierPath addLineToPoint: CGPointMake(179.5, 19)];
    [bezierPath addLineToPoint: CGPointMake(182, 13)];
    [bezierPath moveToPoint: CGPointMake(97.5, 27)];
    [bezierPath addLineToPoint: CGPointMake(90.5, 26.5)];
    [bezierPath addLineToPoint: CGPointMake(84.5, 24.5)];
    [bezierPath addLineToPoint: CGPointMake(79.5, 21.5)];
    [bezierPath moveToPoint: CGPointMake(108, 25.5)];
    [bezierPath addLineToPoint: CGPointMake(115.5, 23.5)];
    [bezierPath addLineToPoint: CGPointMake(123.5, 21)];
    [bezierPath addLineToPoint: CGPointMake(131.5, 16.5)];
    [bezierPath addCurveToPoint: CGPointMake(139, 11) controlPoint1: CGPointMake(133.83, 14.83) controlPoint2: CGPointMake(138.6, 11.4)];
    [bezierPath addCurveToPoint: CGPointMake(143.5, 6) controlPoint1: CGPointMake(139.4, 10.6) controlPoint2: CGPointMake(142.17, 7.5)];
    [bezierPath addLineToPoint: CGPointMake(145.5, 1.5)];
    [bezierPath moveToPoint: CGPointMake(85.5, 42.5)];
    [bezierPath addLineToPoint: CGPointMake(90, 43.5)];
    [bezierPath addLineToPoint: CGPointMake(97.5, 43.5)];
    [bezierPath addLineToPoint: CGPointMake(105.5, 42.5)];
    [bezierPath addLineToPoint: CGPointMake(112.5, 41)];
    [bezierPath addLineToPoint: CGPointMake(121, 39)];
    [bezierPath moveToPoint: CGPointMake(91, 62)];
    [bezierPath addCurveToPoint: CGPointMake(95, 61.5) controlPoint1: CGPointMake(91.4, 62) controlPoint2: CGPointMake(93.83, 61.67)];
    [bezierPath addLineToPoint: CGPointMake(99.5, 61)];
    [bezierPath addLineToPoint: CGPointMake(103.5, 60)];
    [bezierPath moveToPoint: CGPointMake(82.5, 61.5)];
    [bezierPath addLineToPoint: CGPointMake(75, 61)];
    [bezierPath addLineToPoint: CGPointMake(68, 58.5)];
    [bezierPath addCurveToPoint: CGPointMake(61.5, 55.5) controlPoint1: CGPointMake(66, 57.5) controlPoint2: CGPointMake(61.9, 55.5)];
    [bezierPath addCurveToPoint: CGPointMake(57, 53) controlPoint1: CGPointMake(61.1, 55.5) controlPoint2: CGPointMake(58.33, 53.83)];
    [bezierPath moveToPoint: CGPointMake(74.5, 100.5)];
    [bezierPath addLineToPoint: CGPointMake(66.5, 99)];
    [bezierPath addLineToPoint: CGPointMake(57.5, 95.5)];
    [bezierPath addLineToPoint: CGPointMake(48.5, 90)];
    [bezierPath moveToPoint: CGPointMake(94.5, 100.5)];
    [bezierPath addLineToPoint: CGPointMake(100, 100.5)];
    [bezierPath addLineToPoint: CGPointMake(104.5, 100)];
    [bezierPath addLineToPoint: CGPointMake(113.5, 98.5)];
    [bezierPath addLineToPoint: CGPointMake(124, 96)];
    [bezierPath addLineToPoint: CGPointMake(133.5, 93.5)];
    [bezierPath addLineToPoint: CGPointMake(143, 90.5)];
    [bezierPath addLineToPoint: CGPointMake(152.5, 87.5)];
    [bezierPath addLineToPoint: CGPointMake(162.5, 83)];
    [bezierPath addLineToPoint: CGPointMake(172, 78.5)];
    [bezierPath addLineToPoint: CGPointMake(180, 73.5)];
    [bezierPath addLineToPoint: CGPointMake(186, 69.5)];
    [bezierPath addLineToPoint: CGPointMake(191.5, 66)];
    [bezierPath moveToPoint: CGPointMake(200, 58)];
    [bezierPath addLineToPoint: CGPointMake(204, 53)];
    [bezierPath addLineToPoint: CGPointMake(207.5, 47)];
    [bezierPath addLineToPoint: CGPointMake(210.5, 39.5)];
    [bezierPath moveToPoint: CGPointMake(113.5, 79)];
    [bezierPath addLineToPoint: CGPointMake(121.5, 77)];
    [bezierPath addLineToPoint: CGPointMake(134.5, 73)];
    [bezierPath addLineToPoint: CGPointMake(143, 70)];
    [bezierPath addLineToPoint: CGPointMake(152, 66)];
    [bezierPath addLineToPoint: CGPointMake(159.5, 62.5)];
    [bezierPath addLineToPoint: CGPointMake(166, 59)];
    [bezierPath moveToPoint: CGPointMake(74.5, 118)];
    [bezierPath addLineToPoint: CGPointMake(81.5, 118.5)];
    [bezierPath addLineToPoint: CGPointMake(89, 118.5)];
    [bezierPath addLineToPoint: CGPointMake(97, 117.5)];
    [bezierPath moveToPoint: CGPointMake(178.5, 93.5)];
    [bezierPath addLineToPoint: CGPointMake(184.5, 91.5)];
    [bezierPath addLineToPoint: CGPointMake(192, 87)];
    [bezierPath addLineToPoint: CGPointMake(201, 80)];
    [bezierPath addLineToPoint: CGPointMake(207, 75.5)];
    [bezierPath addLineToPoint: CGPointMake(211, 71)];
    [bezierPath moveToPoint: CGPointMake(155, 147.5)];
    [bezierPath addLineToPoint: CGPointMake(159.5, 146.5)];
    [bezierPath addLineToPoint: CGPointMake(168.5, 143)];
    [bezierPath addLineToPoint: CGPointMake(176.5, 139.5)];
    [bezierPath addLineToPoint: CGPointMake(183, 136.5)];
    [bezierPath addLineToPoint: CGPointMake(189, 133.5)];
    [bezierPath addLineToPoint: CGPointMake(191.5, 130.5)];
    [bezierPath moveToPoint: CGPointMake(196.5, 143)];
    [bezierPath addLineToPoint: CGPointMake(202.5, 139.5)];
    [bezierPath addLineToPoint: CGPointMake(208, 135.5)];
    [bezierPath addLineToPoint: CGPointMake(215.5, 128)];
    [bezierPath moveToPoint: CGPointMake(186, 149)];
    [bezierPath addLineToPoint: CGPointMake(178.5, 152.5)];
    [bezierPath addLineToPoint: CGPointMake(168, 156.5)];
    [bezierPath addLineToPoint: CGPointMake(158, 160)];
    [bezierPath addLineToPoint: CGPointMake(147, 163)];
    [bezierPath addLineToPoint: CGPointMake(136.5, 165.5)];
    [bezierPath addLineToPoint: CGPointMake(122.5, 167)];
    [bezierPath addLineToPoint: CGPointMake(109, 167.5)];
    [bezierPath addLineToPoint: CGPointMake(97.5, 167)];
    bezierPath.lineWidth = 1;
    bezierPath.miterLimit = 4;
    bezierPath.lineCapStyle = kCGLineCapRound;
    return bezierPath;

}

- (UIBezierPath*)getPlanetVector {
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(34.5, 88)];
    [bezierPath addLineToPoint: CGPointMake(25.5, 92)];
    [bezierPath addLineToPoint: CGPointMake(16.5, 99)];
    [bezierPath addLineToPoint: CGPointMake(8, 107)];
    [bezierPath addLineToPoint: CGPointMake(2, 115)];
    [bezierPath addLineToPoint: CGPointMake(0, 123)];
    [bezierPath addLineToPoint: CGPointMake(1, 131)];
    [bezierPath addLineToPoint: CGPointMake(5, 137.5)];
    [bezierPath addLineToPoint: CGPointMake(12, 143)];
    [bezierPath addLineToPoint: CGPointMake(22.5, 147.5)];
    [bezierPath addLineToPoint: CGPointMake(33.5, 150)];
    [bezierPath addLineToPoint: CGPointMake(45, 151)];
    [bezierPath addLineToPoint: CGPointMake(56, 151.5)];
    [bezierPath addLineToPoint: CGPointMake(62.5, 151.3)];
    [bezierPath moveToPoint: CGPointMake(34.5, 88)];
    [bezierPath addLineToPoint: CGPointMake(35, 81)];
    [bezierPath addLineToPoint: CGPointMake(37.5, 68.5)];
    [bezierPath addLineToPoint: CGPointMake(41, 58)];
    [bezierPath addLineToPoint: CGPointMake(45.5, 46.5)];
    [bezierPath addLineToPoint: CGPointMake(51, 38)];
    [bezierPath addLineToPoint: CGPointMake(58, 28.5)];
    [bezierPath addLineToPoint: CGPointMake(66, 21)];
    [bezierPath addLineToPoint: CGPointMake(74, 15.5)];
    [bezierPath addLineToPoint: CGPointMake(82.5, 10.5)];
    [bezierPath addCurveToPoint: CGPointMake(94, 5.5) controlPoint1: CGPointMake(86.17, 9) controlPoint2: CGPointMake(93.6, 5.9)];
    [bezierPath addCurveToPoint: CGPointMake(105, 2) controlPoint1: CGPointMake(94.4, 5.1) controlPoint2: CGPointMake(101.5, 3)];
    [bezierPath addLineToPoint: CGPointMake(121.5, 0.5)];
    [bezierPath addLineToPoint: CGPointMake(135.5, 1.5)];
    [bezierPath addLineToPoint: CGPointMake(149.5, 4)];
    [bezierPath addLineToPoint: CGPointMake(162, 9)];
    [bezierPath addLineToPoint: CGPointMake(174, 16.5)];
    [bezierPath addLineToPoint: CGPointMake(182.5, 23.5)];
    [bezierPath addLineToPoint: CGPointMake(189.5, 30.5)];
    [bezierPath addLineToPoint: CGPointMake(195.5, 37.5)];
    [bezierPath moveToPoint: CGPointMake(34.5, 88)];
    [bezierPath addLineToPoint: CGPointMake(34.5, 94.5)];
    [bezierPath addLineToPoint: CGPointMake(35.5, 102)];
    [bezierPath moveToPoint: CGPointMake(195.5, 37.5)];
    [bezierPath addLineToPoint: CGPointMake(204.5, 36)];
    [bezierPath addLineToPoint: CGPointMake(216.5, 35.5)];
    [bezierPath addLineToPoint: CGPointMake(228, 37)];
    [bezierPath addLineToPoint: CGPointMake(238.5, 41)];
    [bezierPath addLineToPoint: CGPointMake(245.5, 46.5)];
    [bezierPath addLineToPoint: CGPointMake(248, 54)];
    [bezierPath addLineToPoint: CGPointMake(247.5, 63)];
    [bezierPath addLineToPoint: CGPointMake(244, 71.5)];
    [bezierPath addLineToPoint: CGPointMake(233.5, 85)];
    [bezierPath addLineToPoint: CGPointMake(225, 93.5)];
    [bezierPath addLineToPoint: CGPointMake(212, 103.5)];
    [bezierPath addLineToPoint: CGPointMake(208.67, 105.5)];
    [bezierPath moveToPoint: CGPointMake(195.5, 37.5)];
    [bezierPath addLineToPoint: CGPointMake(199, 42.5)];
    [bezierPath addLineToPoint: CGPointMake(202, 49)];
    [bezierPath moveToPoint: CGPointMake(35.5, 102)];
    [bezierPath addLineToPoint: CGPointMake(31.5, 104.5)];
    [bezierPath addLineToPoint: CGPointMake(28, 109)];
    [bezierPath addLineToPoint: CGPointMake(26.5, 114)];
    [bezierPath addLineToPoint: CGPointMake(27, 119)];
    [bezierPath addLineToPoint: CGPointMake(29.5, 123)];
    [bezierPath addLineToPoint: CGPointMake(34.5, 126)];
    [bezierPath addLineToPoint: CGPointMake(42, 129)];
    [bezierPath addLineToPoint: CGPointMake(44.5, 129.47)];
    [bezierPath moveToPoint: CGPointMake(35.5, 102)];
    [bezierPath addLineToPoint: CGPointMake(38, 110.5)];
    [bezierPath addLineToPoint: CGPointMake(40.5, 119)];
    [bezierPath addLineToPoint: CGPointMake(44.5, 129.47)];
    [bezierPath moveToPoint: CGPointMake(202, 49)];
    [bezierPath addLineToPoint: CGPointMake(208.5, 49)];
    [bezierPath addLineToPoint: CGPointMake(216.5, 52)];
    [bezierPath addLineToPoint: CGPointMake(219.5, 56)];
    [bezierPath addLineToPoint: CGPointMake(220, 62)];
    [bezierPath addLineToPoint: CGPointMake(218.5, 67.5)];
    [bezierPath addLineToPoint: CGPointMake(214.5, 73)];
    [bezierPath addLineToPoint: CGPointMake(210.83, 77)];
    [bezierPath moveToPoint: CGPointMake(202, 49)];
    [bezierPath addLineToPoint: CGPointMake(205, 56)];
    [bezierPath addLineToPoint: CGPointMake(208.67, 67.5)];
    [bezierPath addLineToPoint: CGPointMake(210.83, 77)];
    [bezierPath moveToPoint: CGPointMake(62.5, 151.3)];
    [bezierPath addLineToPoint: CGPointMake(72.5, 151)];
    [bezierPath addLineToPoint: CGPointMake(93.5, 148.5)];
    [bezierPath addLineToPoint: CGPointMake(111, 145)];
    [bezierPath addLineToPoint: CGPointMake(126.5, 141)];
    [bezierPath addLineToPoint: CGPointMake(146, 135)];
    [bezierPath addLineToPoint: CGPointMake(165.5, 127.5)];
    [bezierPath addLineToPoint: CGPointMake(181, 120.5)];
    [bezierPath addLineToPoint: CGPointMake(197, 112.5)];
    [bezierPath addLineToPoint: CGPointMake(208.67, 105.5)];
    [bezierPath moveToPoint: CGPointMake(62.5, 151.3)];
    [bezierPath addLineToPoint: CGPointMake(67.5, 157)];
    [bezierPath addLineToPoint: CGPointMake(75.5, 163)];
    [bezierPath addLineToPoint: CGPointMake(84.5, 167.5)];
    [bezierPath addLineToPoint: CGPointMake(93.5, 171)];
    [bezierPath addLineToPoint: CGPointMake(104.5, 174.5)];
    [bezierPath addLineToPoint: CGPointMake(117, 176.5)];
    [bezierPath addLineToPoint: CGPointMake(129, 176.5)];
    [bezierPath addLineToPoint: CGPointMake(140, 175.5)];
    [bezierPath addLineToPoint: CGPointMake(149.5, 173)];
    [bezierPath addLineToPoint: CGPointMake(157, 170)];
    [bezierPath addLineToPoint: CGPointMake(166.5, 165.5)];
    [bezierPath addLineToPoint: CGPointMake(174, 160.5)];
    [bezierPath addLineToPoint: CGPointMake(180, 156)];
    [bezierPath addLineToPoint: CGPointMake(188, 147.5)];
    [bezierPath addLineToPoint: CGPointMake(196, 137.5)];
    [bezierPath addLineToPoint: CGPointMake(201.5, 128)];
    [bezierPath addLineToPoint: CGPointMake(206.5, 116)];
    [bezierPath addLineToPoint: CGPointMake(208.67, 105.5)];
    [bezierPath moveToPoint: CGPointMake(210.83, 77)];
    [bezierPath addLineToPoint: CGPointMake(209, 79)];
    [bezierPath addLineToPoint: CGPointMake(204, 84)];
    [bezierPath addLineToPoint: CGPointMake(198, 88.5)];
    [bezierPath addLineToPoint: CGPointMake(190.5, 93.5)];
    [bezierPath addLineToPoint: CGPointMake(183.5, 98)];
    [bezierPath addLineToPoint: CGPointMake(176.5, 102)];
    [bezierPath addLineToPoint: CGPointMake(169.5, 105.5)];
    [bezierPath addLineToPoint: CGPointMake(160.5, 110)];
    [bezierPath addLineToPoint: CGPointMake(149, 115)];
    [bezierPath addLineToPoint: CGPointMake(137.5, 119)];
    [bezierPath addLineToPoint: CGPointMake(125.5, 122.5)];
    [bezierPath addLineToPoint: CGPointMake(114, 125.5)];
    [bezierPath addLineToPoint: CGPointMake(102, 128)];
    [bezierPath addLineToPoint: CGPointMake(90, 130)];
    [bezierPath addLineToPoint: CGPointMake(78, 131)];
    [bezierPath addLineToPoint: CGPointMake(66.5, 131.5)];
    [bezierPath addLineToPoint: CGPointMake(57.5, 131)];
    [bezierPath addLineToPoint: CGPointMake(50, 130.5)];
    [bezierPath addLineToPoint: CGPointMake(44.5, 129.47)];
    bezierPath.lineWidth = 1;
    bezierPath.miterLimit = 4;
    bezierPath.lineCapStyle = kCGLineCapRound;
    return bezierPath;
}

@end
