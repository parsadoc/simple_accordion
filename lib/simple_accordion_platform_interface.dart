import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'simple_accordion_method_channel.dart';

abstract class SimpleAccordionPlatform extends PlatformInterface {
  /// Constructs a SimpleAccordionPlatform.
  SimpleAccordionPlatform() : super(token: _token);

  static final Object _token = Object();

  static SimpleAccordionPlatform _instance = MethodChannelSimpleAccordion();

  /// The default instance of [SimpleAccordionPlatform] to use.
  ///
  /// Defaults to [MethodChannelSimpleAccordion].
  static SimpleAccordionPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [SimpleAccordionPlatform] when
  /// they register themselves.
  static set instance(SimpleAccordionPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
