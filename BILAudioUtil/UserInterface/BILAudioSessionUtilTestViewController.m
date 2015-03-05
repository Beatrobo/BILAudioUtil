#import "BILAudioSessionUtilTestViewController.h"
#import "BILAudioSessionUtil.h"


@interface BILAudioSessionUtilTestViewController ()

@end


@implementation BILAudioSessionUtilTestViewController

#pragma mark - UIViewController

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    #if TARGET_IPHONE_SIMULATOR
    [[[UIAlertView alloc] initWithTitle:@"Not Work in Simulator"
                                message:@"Go Back"
                               delegate:nil
                      cancelButtonTitle:@"OK"
                      otherButtonTitles:nil] show];
    #endif
}

#pragma mark - IBActions

- (IBAction)touchUpInsideAudioSessionActiveYESButton:(UIButton*)sender
{
    #if !(TARGET_IPHONE_SIMULATOR)
    BOOL success = [BILAudioSessionUtil setAudioSessionActive:YES];
    if (success) {
        ;
    } else {
        ;
    }
    #endif
}

- (IBAction)touchUpInsideAudioSessionActiveNOButton:(UIButton*)sender
{
    #if !(TARGET_IPHONE_SIMULATOR)
    BOOL success = [BILAudioSessionUtil setAudioSessionActive:NO];
    if (success) {
        ;
    } else {
        ;
    }
    #endif
}

- (IBAction)touchUpInsideAmbientButton:(UIButton*)sender
{
    #if !(TARGET_IPHONE_SIMULATOR)
    BOOL success = [BILAudioSessionUtil setAudioSessionCategoryAmbientIfNeeded];
    if (success) {
        ;
    } else {
        ;
    }
    #endif
}

- (IBAction)touchUpInsideSoloAmbientButton:(UIButton*)sender
{
    #if !(TARGET_IPHONE_SIMULATOR)
    BOOL success = [BILAudioSessionUtil setAudioSessionCategorySoloAmbientIfNeeded];
    if (success) {
        ;
    } else {
        ;
    }
    #endif
}

- (IBAction)touchUpInsidePlaybackButton:(UIButton*)sender
{
    #if !(TARGET_IPHONE_SIMULATOR)
    BOOL success = [BILAudioSessionUtil setAudioSessionCategoryPlaybackIfNeeded];
    if (success) {
        ;
    } else {
        ;
    }
    #endif
}

- (IBAction)touchUpInsideRecordButton:(UIButton*)sender
{
    #if !(TARGET_IPHONE_SIMULATOR)
    BOOL success = [BILAudioSessionUtil setAudioSessionCategoryRecordIfNeeded];
    if (success) {
        ;
    } else {
        ;
    }
    #endif
}

- (IBAction)touchUpInsidePlayAndRecordButton:(UIButton*)sender
{
    #if !(TARGET_IPHONE_SIMULATOR)
    BOOL success = [BILAudioSessionUtil setAudioSessionCategoryPlayAndRecordIfNeeded];
    if (success) {
        ;
    } else {
        ;
    }
    #endif
}

@end
