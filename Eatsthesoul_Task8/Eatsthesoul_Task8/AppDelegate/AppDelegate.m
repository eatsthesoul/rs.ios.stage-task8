//
//  AppDelegate.m
//  Eatsthesoul_Task8
//
//  Created by Evgeniy Petlitskiy on 16.07.21.
//

#import "AppDelegate.h"
#import "ArtistVC.h"
#import "UIFont+AppFont.h"
#import "UIColor+CustomColors.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    UIWindow *window = [[UIWindow alloc] initWithFrame:UIScreen.mainScreen.bounds];
    window.rootViewController = [self rootVC];
    self.window = window;
    [self.window makeKeyAndVisible];
    
    [self setupNavigationBar];
    
    return YES;
}

- (UIViewController *)rootVC {
    UIViewController *artistVC = [[ArtistVC alloc] init];
    return [[UINavigationController alloc] initWithRootViewController: artistVC];
}

- (void)setupNavigationBar {
    NSDictionary *textAttributes = [NSDictionary dictionaryWithObjectsAndKeys:
                                    [UIFont montserratRegularWithSize:17], NSFontAttributeName, nil];
    UINavigationBar.appearance.titleTextAttributes = textAttributes;
    UIView.appearance.tintColor = [UIColor lightGreenSea];
    [UIBarButtonItem.appearance setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIFont montserratRegularWithSize:17], NSFontAttributeName, nil] forState:UIControlStateNormal];
}


@end
