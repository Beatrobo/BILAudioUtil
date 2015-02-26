#import <Foundation/Foundation.h>


@interface BILStringEncrypter : NSObject

+ (NSString*)encryptedBase64StringForString:(NSString*)string key:(NSString*)key;
+ (NSString*)decryptedStringForBase64String:(NSString*)base64String key:(NSString*)key;

@end
