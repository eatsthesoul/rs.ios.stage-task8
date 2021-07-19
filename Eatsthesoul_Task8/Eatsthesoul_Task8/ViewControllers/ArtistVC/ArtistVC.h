//
//  ArtistVC.h
//  Eatsthesoul_Task8
//
//  Created by Evgeniy Petlitskiy on 16.07.21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, ArtistVCCondition) {
    ArtistVCConditionIdle,
    ArtistVCConditionDraw,
    ArtistVCConditionDone
} NS_SWIFT_NAME(ArtistVCCondition);

@interface ArtistVC : UIViewController

@end

NS_ASSUME_NONNULL_END
