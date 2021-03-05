
#import "RNCustomCam.h"
#import <LocalAuthentication/LocalAuthentication.h>

@implementation RNCustomCam

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE();

RCT_Export_METHOD(isAvailable:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    LAContext *context = [[LAContext alloc] init];
    if([context canEvaluatePolicy:LAPolicyDeviceOwnerAuthenticationWithBiometrics error:NULL]) {
        resolve(@(YES));
    } else {
        resolve(@(NO));
    }
}
@end
  