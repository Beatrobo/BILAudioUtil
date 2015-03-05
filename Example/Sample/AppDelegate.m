#import "AppDelegate.h"
#import "BILAudioSessionUtilTestViewController.h"


@interface AppDelegate ()

@end


@implementation AppDelegate

- (BOOL)application:(UIApplication*)application didFinishLaunchingWithOptions:(NSDictionary*)launchOptions
{
    self.window.rootViewController = [[BILAudioSessionUtilTestViewController alloc] initWithNibName:nil bundle:nil];
    return YES;
}

@end
