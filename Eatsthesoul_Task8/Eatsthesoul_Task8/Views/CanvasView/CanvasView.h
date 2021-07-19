//
//  CanvasView.h
//  Eatsthesoul_Task8
//
//  Created by Evgeniy Petlitskiy on 16.07.21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, CanvasType) {
    CanvasTypePlanet,
    CanvasTypeHead,
    CanvasTypeTree,
    CanvasTypeLandscape
} NS_SWIFT_NAME(CanvasType);

@interface CanvasView : UIView

@property (nonatomic, assign) CanvasType type;

@property CAShapeLayer *shape1Layer;
@property CAShapeLayer *shape2Layer;
@property CAShapeLayer *shape3Layer;

- (void)setupLayersStrokeEnd:(float)strokeEnd;
- (void)addLayers;
- (void)removeLayers;

@end

NS_ASSUME_NONNULL_END
