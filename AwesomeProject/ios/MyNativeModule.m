//MyNativeModule.m
#import <React/RCTBridgeModule.h>
 
@interface RCT_EXTERN_MODULE(MyNativeModule, NSObject)
RCT_EXTERN_METHOD(passValueFromReact:(NSString *)value)
RCT_EXTERN_METHOD(getCount: (RCTResponseSenderBlock)callback)
@end
