#import "BILAudioVolumeManagerTestViewController.h"
#import "BILAudioSessionUtil.h"
#import "BILAudioVolumeManager.h"


@interface BILAudioVolumeManagerTestViewController ()
#if !(TARGET_IPHONE_SIMULATOR)
<BILAudioVolumeManagerObserving>
#endif
@property (nonatomic, weak) IBOutlet UISlider* ringtoneVolumeSlider;
@property (nonatomic, weak) IBOutlet UILabel*  ringtoneVolumeLabel;
@property (nonatomic, weak) IBOutlet UISlider* audioVideoVolumeSlider;
@property (nonatomic, weak) IBOutlet UILabel*  audioVideoVolumeLabel;
@end


@implementation BILAudioVolumeManagerTestViewController

#pragma mark - UIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    #if !(TARGET_IPHONE_SIMULATOR)
    [[BILAudioVolumeManager sharedManager] addAudioVolumeManagerObserver:self];
    
    {
        float volume = [BILAudioVolumeManager sharedManager].volumeForRingtone;
        self.ringtoneVolumeSlider.value = volume;
        self.ringtoneVolumeLabel.text = [NSString stringWithFormat:@"%.2f", volume];
    }
    {
        float volume = [BILAudioVolumeManager sharedManager].volumeForAudioVideo;
        self.audioVideoVolumeSlider.value = volume;
        self.audioVideoVolumeLabel.text = [NSString stringWithFormat:@"%.2f", volume];
    }
    #endif
}

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

- (IBAction)valueChangedRingtoneVolumeSlider:(UISlider*)sender
{
    #if !(TARGET_IPHONE_SIMULATOR)
    [BILAudioVolumeManager sharedManager].volumeForRingtone = sender.value;
    #endif
}

- (IBAction)valueChangedAudioVideoVolumeSlider:(UISlider*)sender
{
    #if !(TARGET_IPHONE_SIMULATOR)
    [BILAudioVolumeManager sharedManager].volumeForAudioVideo = sender.value;
    #endif
}

#if !(TARGET_IPHONE_SIMULATOR)

#pragma mark - BILAudioVolumeManagerObserving

- (void)audioVolumeManager:(BILAudioVolumeManager*)audioVolumeManager
           didChangeVolume:(float)volume
           isExplictChange:(BOOL)isExplictChange
             audioCategory:(id)audioCategory
{
    if ([audioCategory isKindOfClass:[NSString class]] && [audioCategory isEqualToString:@"Ringtone"]) {
        if (self.ringtoneVolumeSlider.isTracking == NO) {
            self.ringtoneVolumeSlider.value = volume;
        }
        self.ringtoneVolumeLabel.text = [NSString stringWithFormat:@"%.2f", volume];
    }
    else if ([audioCategory isKindOfClass:[NSString class]] && [audioCategory isEqualToString:@"Audio/Video"]) {
        if (self.audioVideoVolumeSlider.isTracking == NO) {
            self.audioVideoVolumeSlider.value = volume;
        }
        self.audioVideoVolumeLabel.text = [NSString stringWithFormat:@"%.2f", volume];
    }

}

#endif

@end
