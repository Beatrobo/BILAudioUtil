#import "AppDelegate.h"
#import "BILAudioVolumeManagerTestViewController.h"


@interface AppDelegate ()

@end


@implementation AppDelegate

- (BOOL)application:(UIApplication*)application didFinishLaunchingWithOptions:(NSDictionary*)launchOptions
{
    self.window.rootViewController = [[BILAudioVolumeManagerTestViewController alloc] initWithNibName:nil bundle:nil];
    return YES;
}

@end
