import 'dart:io';

final bool deviceIsApple = AppleDeviceIdentifier().isApple;

class AppleDeviceIdentifier {
  bool get isApple => Platform.isIOS || Platform.isMacOS;
}