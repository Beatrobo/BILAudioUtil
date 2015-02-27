#import "AppDelegate.h"
#import "BILAudioVolumeManagerTestViewController.h"


@interface AppDelegate ()

@end


@implementation AppDelegate

- (BOOL)application:(UIApplication*)application didFinishLaunchingWithOptions:(NSDictionary*)launchOptions
{
    UIViewController* vc = [[BILAudioVolumeManagerTestViewController alloc] initWithNibName:nil bundle:nil];
    self.window.rootViewController = vc;
    return YES;
}

@end
