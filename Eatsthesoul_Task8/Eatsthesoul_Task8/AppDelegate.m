//
//  AppDelegate.m
//  Eatsthesoul_Task8
//
//  Created by Evgeniy Petlitskiy on 16.07.21.
//

#import "AppDelegate.h"
#import "ArtistVC.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    UIWindow *window = [[UIWindow alloc] initWithFrame:UIScreen.mainScreen.bounds];
    UIViewController *artistVC = [[ArtistVC alloc] init];
    UINavigationController *nvc = [[UINavigationController alloc] initWithRootViewController: artistVC];
    window.rootViewController = nvc;
    self.window = window;
    [self.window makeKeyAndVisible];
    return YES;
}


@end
