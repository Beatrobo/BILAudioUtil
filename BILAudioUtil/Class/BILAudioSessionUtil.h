#if TARGET_OS_IPHONE && !(TARGET_IPHONE_SIMULATOR)


#import <Foundation/Foundation.h>


@interface BILAudioSessionUtil : NSObject

+ (void)requestRecordPermissionWithCallback:(void (^)(BOOL))callback;

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