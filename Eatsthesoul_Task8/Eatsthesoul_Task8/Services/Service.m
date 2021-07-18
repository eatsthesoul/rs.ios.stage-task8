//
//  Service.m
//  Eatsthesoul_Task8
//
//  Created by Evgeniy Petlitskiy on 18.07.21.
//

#import "Service.h"


@implementation Service

- (instancetype)initPrivate
{
    self = [super init];
    if (self) {
        _colorsArray = [[NSMutableArray alloc] init];
        _timeForPainting = 1;
    }
    return self;
}

+ (instancetype)sharedInstance {
    static Service *uniqueInstance = nil;
    if (nil == uniqueInstance) {
        uniqueInstance = [[Service alloc] initPrivate];
    }
    return uniqueInstance;
}

@end
