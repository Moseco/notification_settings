import 'package:flutter/services.dart';

class NotificationSettings {
  static const MethodChannel _channel =
      const MethodChannel('notification_settings');

  static openAppNotificationSettings() async {
    await _channel.invokeMethod("openAppNotificationSettings");
  }
}
