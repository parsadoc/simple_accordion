import 'package:flutter_test/flutter_test.dart';
import 'package:simple_accordion/simple_accordion.dart';
import 'package:simple_accordion/simple_accordion_platform_interface.dart';
import 'package:simple_accordion/simple_accordion_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockSimpleAccordionPlatform
    with MockPlatformInterfaceMixin
    implements SimpleAccordionPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final SimpleAccordionPlatform initialPlatform =
      SimpleAccordionPlatform.instance;

  test('$MethodChannelSimpleAccordion is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelSimpleAccordion>());
  });

  test('getPlatformVersion', () async {
    SimpleAccordion simpleAccordionPlugin = SimpleAccordion();
    MockSimpleAccordionPlatform fakePlatform = MockSimpleAccordionPlatform();
    SimpleAccordionPlatform.instance = fakePlatform;
  });
}
