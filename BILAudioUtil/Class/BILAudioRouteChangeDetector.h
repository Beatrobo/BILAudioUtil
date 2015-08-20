#import <Foundation/Foundation.h>


#if TARGET_OS_IPHONE


#import <AVFoundation/AVFoundation.h>


@protocol BILAudioRouteChangeDetectorObserver <NSObject>
@optional
- (void)audioRouteChangeDetectorDidDetectAudioSessionPropertyChangeWithReason:(AVAudioSessionRouteChangeReason)reason
                                                                 notification:(NSNotification*)notification;
@end


@interface BILAudioRouteChangeDetector : NSObject

+ (instancetype)sharedDetector;

- (void)addObserver:(__weak id<BILAudioRouteChangeDetectorObserver>)observer;
- (void)removeObserver:(__weak id<BILAudioRouteChangeDetectorObserver>)observer;

@end


#endif