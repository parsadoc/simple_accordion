import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'simple_accordion_platform_interface.dart';

/// An implementation of [SimpleAccordionPlatform] that uses method channels.
class MethodChannelSimpleAccordion extends SimpleAccordionPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('simple_accordion');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
