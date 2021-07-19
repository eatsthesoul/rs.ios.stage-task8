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

@end

NS_ASSUME_NONNULL_END
