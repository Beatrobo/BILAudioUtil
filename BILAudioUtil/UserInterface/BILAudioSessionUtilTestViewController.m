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
    BOOL success = [BILAudioSessionUtil setAudioSessionActive:YES];
    if (success) {
        ;
    } else {
        ;
    }
}

- (IBAction)touchUpInsideAudioSessionActiveNOButton:(UIButton*)sender
{
    BOOL success = [BILAudioSessionUtil setAudioSessionActive:NO];
    if (success) {
        ;
    } else {
        ;
    }
}

- (IBAction)touchUpInsideAmbientButton:(UIButton*)sender
{
    BOOL success = [BILAudioSessionUtil setAudioSessionCategoryAmbientIfNeeded];
    if (success) {
        ;
    } else {
        ;
    }
}

- (IBAction)touchUpInsideSoloAmbientButton:(UIButton*)sender
{
    BOOL success = [BILAudioSessionUtil setAudioSessionCategorySoloAmbientIfNeeded];
    if (success) {
        ;
    } else {
        ;
    }
}

- (IBAction)touchUpInsidePlaybackButton:(UIButton*)sender
{
    BOOL success = [BILAudioSessionUtil setAudioSessionCategoryPlaybackIfNeeded];
    if (success) {
        ;
    } else {
        ;
    }
}

- (IBAction)touchUpInsideRecordButton:(UIButton*)sender
{
    BOOL success = [BILAudioSessionUtil setAudioSessionCategoryRecordIfNeeded];
    if (success) {
        ;
    } else {
        ;
    }
}

- (IBAction)touchUpInsidePlayAndRecordButton:(UIButton*)sender
{
    BOOL success = [BILAudioSessionUtil setAudioSessionCategoryPlayAndRecordIfNeeded];
    if (success) {
        ;
    } else {
        ;
    }
}

@end
