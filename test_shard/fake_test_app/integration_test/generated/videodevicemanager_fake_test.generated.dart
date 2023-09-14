/// GENERATED BY testcase_gen. DO NOT MODIFY BY HAND.

// ignore_for_file: deprecated_member_use,constant_identifier_names

import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/foundation.dart';
import 'package:fake_test_app/main.dart' as app;
import 'package:iris_tester/iris_tester.dart';
import 'package:iris_method_channel/iris_method_channel.dart';

void videoDeviceManagerSmokeTestCases() {
  testWidgets(
    'enumerateVideoDevices',
    (WidgetTester tester) async {
      String engineAppId = const String.fromEnvironment('TEST_APP_ID',
          defaultValue: '<YOUR_APP_ID>');

      RtcEngine rtcEngine = createAgoraRtcEngine();
      await rtcEngine.initialize(RtcEngineContext(
        appId: engineAppId,
        areaCode: AreaCode.areaCodeGlob.value(),
      ));

      final videoDeviceManager = rtcEngine.getVideoDeviceManager();

      try {
        await videoDeviceManager.enumerateVideoDevices();
      } catch (e) {
        if (e is! AgoraRtcException) {
          debugPrint('[enumerateVideoDevices] error: ${e.toString()}');
          rethrow;
        }

        if (e.code != -4) {
          // Only not supported error supported.
          rethrow;
        }
      }

      await videoDeviceManager.release();
      await rtcEngine.release();
    },
//  skip: !(),
  );

  testWidgets(
    'setDevice',
    (WidgetTester tester) async {
      String engineAppId = const String.fromEnvironment('TEST_APP_ID',
          defaultValue: '<YOUR_APP_ID>');

      RtcEngine rtcEngine = createAgoraRtcEngine();
      await rtcEngine.initialize(RtcEngineContext(
        appId: engineAppId,
        areaCode: AreaCode.areaCodeGlob.value(),
      ));

      final videoDeviceManager = rtcEngine.getVideoDeviceManager();

      try {
        const String deviceIdUTF8 = "hello";
        await videoDeviceManager.setDevice(
          deviceIdUTF8,
        );
      } catch (e) {
        if (e is! AgoraRtcException) {
          debugPrint('[setDevice] error: ${e.toString()}');
          rethrow;
        }

        if (e.code != -4) {
          // Only not supported error supported.
          rethrow;
        }
      }

      await videoDeviceManager.release();
      await rtcEngine.release();
    },
//  skip: !(),
  );

  testWidgets(
    'getDevice',
    (WidgetTester tester) async {
      String engineAppId = const String.fromEnvironment('TEST_APP_ID',
          defaultValue: '<YOUR_APP_ID>');

      RtcEngine rtcEngine = createAgoraRtcEngine();
      await rtcEngine.initialize(RtcEngineContext(
        appId: engineAppId,
        areaCode: AreaCode.areaCodeGlob.value(),
      ));

      final videoDeviceManager = rtcEngine.getVideoDeviceManager();

      try {
        await videoDeviceManager.getDevice();
      } catch (e) {
        if (e is! AgoraRtcException) {
          debugPrint('[getDevice] error: ${e.toString()}');
          rethrow;
        }

        if (e.code != -4) {
          // Only not supported error supported.
          rethrow;
        }
      }

      await videoDeviceManager.release();
      await rtcEngine.release();
    },
//  skip: !(),
  );

  testWidgets(
    'numberOfCapabilities',
    (WidgetTester tester) async {
      String engineAppId = const String.fromEnvironment('TEST_APP_ID',
          defaultValue: '<YOUR_APP_ID>');

      RtcEngine rtcEngine = createAgoraRtcEngine();
      await rtcEngine.initialize(RtcEngineContext(
        appId: engineAppId,
        areaCode: AreaCode.areaCodeGlob.value(),
      ));

      final videoDeviceManager = rtcEngine.getVideoDeviceManager();

      try {
        const String deviceIdUTF8 = "hello";
        await videoDeviceManager.numberOfCapabilities(
          deviceIdUTF8,
        );
      } catch (e) {
        if (e is! AgoraRtcException) {
          debugPrint('[numberOfCapabilities] error: ${e.toString()}');
          rethrow;
        }

        if (e.code != -4) {
          // Only not supported error supported.
          rethrow;
        }
      }

      await videoDeviceManager.release();
      await rtcEngine.release();
    },
//  skip: !(),
  );

  testWidgets(
    'getCapability',
    (WidgetTester tester) async {
      String engineAppId = const String.fromEnvironment('TEST_APP_ID',
          defaultValue: '<YOUR_APP_ID>');

      RtcEngine rtcEngine = createAgoraRtcEngine();
      await rtcEngine.initialize(RtcEngineContext(
        appId: engineAppId,
        areaCode: AreaCode.areaCodeGlob.value(),
      ));

      final videoDeviceManager = rtcEngine.getVideoDeviceManager();

      try {
        const String deviceIdUTF8 = "hello";
        const int deviceCapabilityNumber = 10;
        await videoDeviceManager.getCapability(
          deviceIdUTF8: deviceIdUTF8,
          deviceCapabilityNumber: deviceCapabilityNumber,
        );
      } catch (e) {
        if (e is! AgoraRtcException) {
          debugPrint('[getCapability] error: ${e.toString()}');
          rethrow;
        }

        if (e.code != -4) {
          // Only not supported error supported.
          rethrow;
        }
      }

      await videoDeviceManager.release();
      await rtcEngine.release();
    },
//  skip: !(),
  );

  testWidgets(
    'startDeviceTest',
    (WidgetTester tester) async {
      String engineAppId = const String.fromEnvironment('TEST_APP_ID',
          defaultValue: '<YOUR_APP_ID>');

      RtcEngine rtcEngine = createAgoraRtcEngine();
      await rtcEngine.initialize(RtcEngineContext(
        appId: engineAppId,
        areaCode: AreaCode.areaCodeGlob.value(),
      ));

      final videoDeviceManager = rtcEngine.getVideoDeviceManager();

      try {
        const int hwnd = 10;
        await videoDeviceManager.startDeviceTest(
          hwnd,
        );
      } catch (e) {
        if (e is! AgoraRtcException) {
          debugPrint('[startDeviceTest] error: ${e.toString()}');
          rethrow;
        }

        if (e.code != -4) {
          // Only not supported error supported.
          rethrow;
        }
      }

      await videoDeviceManager.release();
      await rtcEngine.release();
    },
//  skip: !(),
  );

  testWidgets(
    'stopDeviceTest',
    (WidgetTester tester) async {
      String engineAppId = const String.fromEnvironment('TEST_APP_ID',
          defaultValue: '<YOUR_APP_ID>');

      RtcEngine rtcEngine = createAgoraRtcEngine();
      await rtcEngine.initialize(RtcEngineContext(
        appId: engineAppId,
        areaCode: AreaCode.areaCodeGlob.value(),
      ));

      final videoDeviceManager = rtcEngine.getVideoDeviceManager();

      try {
        await videoDeviceManager.stopDeviceTest();
      } catch (e) {
        if (e is! AgoraRtcException) {
          debugPrint('[stopDeviceTest] error: ${e.toString()}');
          rethrow;
        }

        if (e.code != -4) {
          // Only not supported error supported.
          rethrow;
        }
      }

      await videoDeviceManager.release();
      await rtcEngine.release();
    },
//  skip: !(),
  );

  testWidgets(
    'release',
    (WidgetTester tester) async {
      String engineAppId = const String.fromEnvironment('TEST_APP_ID',
          defaultValue: '<YOUR_APP_ID>');

      RtcEngine rtcEngine = createAgoraRtcEngine();
      await rtcEngine.initialize(RtcEngineContext(
        appId: engineAppId,
        areaCode: AreaCode.areaCodeGlob.value(),
      ));

      final videoDeviceManager = rtcEngine.getVideoDeviceManager();

      try {
        await videoDeviceManager.release();
      } catch (e) {
        if (e is! AgoraRtcException) {
          debugPrint('[release] error: ${e.toString()}');
          rethrow;
        }

        if (e.code != -4) {
          // Only not supported error supported.
          rethrow;
        }
      }

      await videoDeviceManager.release();
      await rtcEngine.release();
    },
//  skip: !(),
  );
}
