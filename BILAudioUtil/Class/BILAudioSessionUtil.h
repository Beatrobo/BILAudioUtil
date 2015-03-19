#import <Foundation/Foundation.h>


#if TARGET_OS_IPHONE && !(TARGET_IPHONE_SIMULATOR)


#import <AVFoundation/AVAudioSession.h>


@interface BILAudioSessionUtil : NSObject

+ (void)requestRecordPermissionWithCallback:(void (^)(BOOL))callback;

+ (BOOL)setAudioSessionCategory:(NSString*)category withOptions:(AVAudioSessionCategoryOptions)options;
+ (BOOL)setAudioSessionCategoryIfNeeded:(NSString*)category withOptions:(AVAudioSessionCategoryOptions)options;
+ (BOOL)setAudioSessionCategoryAmbientIfNeeded;
+ (BOOL)setAudioSessionCategorySoloAmbientIfNeeded;
+ (BOOL)setAudioSessionCategoryPlaybackIfNeeded;
+ (BOOL)setAudioSessionCategoryRecordIfNeeded;
+ (BOOL)setAudioSessionCategoryPlayAndRecordIfNeeded;

+ (BOOL)setAudioSessionActive:(BOOL)active;

+ (BOOL)isInputMicrophoneWiredAndOutputWiredHeadphones;
+ (BOOL)isOutputNotWiredHeadphones;

@end


#endif