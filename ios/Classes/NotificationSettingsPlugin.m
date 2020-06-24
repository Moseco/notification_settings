#import "NotificationSettingsPlugin.h"

@implementation NotificationSettingsPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterMethodChannel* channel = [FlutterMethodChannel
      methodChannelWithName:@"notification_settings"
            binaryMessenger:[registrar messenger]];
  NotificationSettingsPlugin* instance = [[NotificationSettingsPlugin alloc] init];
  [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
  if ([@"openAppNotificationSettings" isEqualToString:call.method]) {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:UIApplicationOpenSettingsURLString]];
    result(nil);
  } else {
    result(FlutterMethodNotImplemented);
  }
}

@end
