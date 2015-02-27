#import <Foundation/Foundation.h>


#if TARGET_OS_IPHONE && !(TARGET_IPHONE_SIMULATOR)
#define ENABLE_ACCESS_PRIVATE_API 1
#if ENABLE_ACCESS_PRIVATE_API


@class BILAudioVolumeManager;


@protocol BILAudioVolumeManagerObserving <NSObject>
@optional
- (void)audioVolumeManager:(BILAudioVolumeManager*)audioVolumeManager
           didChangeVolume:(float)volume
           isExplictChange:(BOOL)isExplictChange
             audioCategory:(id)audioCategory;
@end


@interface BILAudioVolumeManager : NSObject

+ (instancetype)sharedManager;

@property (nonatomic) float volumeForRingtone;
@property (nonatomic) float volumeForAudioVideo;

- (void)addAudioVolumeManagerObserver:(__weak id<BILAudioVolumeManagerObserving>)observer;
- (void)removeAudioVolumeManagerObserver:(__weak id<BILAudioVolumeManagerObserving>)observer;

@end


#endif
#endif
