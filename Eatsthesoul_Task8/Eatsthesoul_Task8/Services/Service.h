//
//  Service.h
//  Eatsthesoul_Task8
//
//  Created by Evgeniy Petlitskiy on 18.07.21.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "CanvasView.h"

NS_ASSUME_NONNULL_BEGIN

@interface Service : NSObject

@property (nonatomic, strong) NSMutableArray<UIColor *> *colorsArray;
@property (nonatomic, assign) float timeForPainting;
@property (nonatomic, assign) CanvasType canvasType;

- (instancetype)init UNAVAILABLE_ATTRIBUTE;
+ (instancetype)sharedInstance;

@end

NS_ASSUME_NONNULL_END
