#import "AppDelegate.h"
#import "GeneratedPluginRegistrant.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  [GeneratedPluginRegistrant registerWithRegistry:self];
  // Override point for customization after application launch.
  [GMSServices provideAPIKey:@"AIzaSyDldNFLdMWH5drcKND5aiF8FRvfPrVObh0"];
  [GeneratedPluginRegistrant registerWithRegistry:self];

  return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

@end
