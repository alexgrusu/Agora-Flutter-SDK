/// GENERATED BY testcase_gen. DO NOT MODIFY BY HAND.

// ignore_for_file: deprecated_member_use,constant_identifier_names

import 'dart:async';
import 'dart:typed_data';

import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:iris_tester/iris_tester.dart';
import 'package:iris_method_channel/iris_method_channel.dart';

void generatedTestCases(IrisTester irisTester) {
  testWidgets(
    'onRecordAudioEncodedFrame',
    (WidgetTester tester) async {
      RtcEngine rtcEngine = createAgoraRtcEngine();
      await rtcEngine.initialize(RtcEngineContext(
        appId: 'app_id',
        areaCode: AreaCode.areaCodeGlob.value(),
      ));

      final onRecordAudioEncodedFrameCompleter = Completer<bool>();
      final theAudioEncodedFrameObserver = AudioEncodedFrameObserver(
        onRecordAudioEncodedFrame: (Uint8List frameBuffer, int length,
            EncodedAudioFrameInfo audioEncodedFrameInfo) {
          onRecordAudioEncodedFrameCompleter.complete(true);
        },
      );

      const AudioEncodedFrameObserverPosition configPostionType =
          AudioEncodedFrameObserverPosition
              .audioEncodedFrameObserverPositionRecord;
      const AudioEncodingType configEncodingType =
          AudioEncodingType.audioEncodingTypeAac16000Low;
      const AudioEncodedFrameObserverConfig config =
          AudioEncodedFrameObserverConfig(
        postionType: configPostionType,
        encodingType: configEncodingType,
      );

      rtcEngine.registerAudioEncodedFrameObserver(
        config: config,
        observer: theAudioEncodedFrameObserver,
      );

// Delay 500 milliseconds to ensure the registerAudioEncodedFrameObserver call completed.
      await Future.delayed(const Duration(milliseconds: 500));

      {
        Uint8List frameBuffer = Uint8List.fromList([1, 2, 3, 4, 5]);
        const int length = 10;
        const AudioCodecType audioEncodedFrameInfoCodec =
            AudioCodecType.audioCodecOpus;
        const bool advancedSettingsSpeech = true;
        const bool advancedSettingsSendEvenIfEmpty = true;
        const EncodedAudioFrameAdvancedSettings
            audioEncodedFrameInfoAdvancedSettings =
            EncodedAudioFrameAdvancedSettings(
          speech: advancedSettingsSpeech,
          sendEvenIfEmpty: advancedSettingsSendEvenIfEmpty,
        );
        const int audioEncodedFrameInfoSampleRateHz = 10;
        const int audioEncodedFrameInfoSamplesPerChannel = 10;
        const int audioEncodedFrameInfoNumberOfChannels = 10;
        const int audioEncodedFrameInfoCaptureTimeMs = 10;
        const EncodedAudioFrameInfo audioEncodedFrameInfo =
            EncodedAudioFrameInfo(
          codec: audioEncodedFrameInfoCodec,
          sampleRateHz: audioEncodedFrameInfoSampleRateHz,
          samplesPerChannel: audioEncodedFrameInfoSamplesPerChannel,
          numberOfChannels: audioEncodedFrameInfoNumberOfChannels,
          advancedSettings: audioEncodedFrameInfoAdvancedSettings,
          captureTimeMs: audioEncodedFrameInfoCaptureTimeMs,
        );

        final eventJson = {
          'frameBuffer': frameBuffer.toList(),
          'length': length,
          'audioEncodedFrameInfo': audioEncodedFrameInfo.toJson(),
        };

        irisTester.fireEvent(
            'AudioEncodedFrameObserver_onRecordAudioEncodedFrame',
            params: eventJson);
      }

      final eventCalled = await onRecordAudioEncodedFrameCompleter.future;
      expect(eventCalled, isTrue);

      {
        rtcEngine.unregisterAudioEncodedFrameObserver(
          theAudioEncodedFrameObserver,
        );
      }
// Delay 500 milliseconds to ensure the unregisterAudioEncodedFrameObserver call completed.
      await Future.delayed(const Duration(milliseconds: 500));

      await rtcEngine.release();
    },
    timeout: const Timeout(Duration(minutes: 1)),
  );

  testWidgets(
    'onPlaybackAudioEncodedFrame',
    (WidgetTester tester) async {
      RtcEngine rtcEngine = createAgoraRtcEngine();
      await rtcEngine.initialize(RtcEngineContext(
        appId: 'app_id',
        areaCode: AreaCode.areaCodeGlob.value(),
      ));

      final onPlaybackAudioEncodedFrameCompleter = Completer<bool>();
      final theAudioEncodedFrameObserver = AudioEncodedFrameObserver(
        onPlaybackAudioEncodedFrame: (Uint8List frameBuffer, int length,
            EncodedAudioFrameInfo audioEncodedFrameInfo) {
          onPlaybackAudioEncodedFrameCompleter.complete(true);
        },
      );

      const AudioEncodedFrameObserverPosition configPostionType =
          AudioEncodedFrameObserverPosition
              .audioEncodedFrameObserverPositionRecord;
      const AudioEncodingType configEncodingType =
          AudioEncodingType.audioEncodingTypeAac16000Low;
      const AudioEncodedFrameObserverConfig config =
          AudioEncodedFrameObserverConfig(
        postionType: configPostionType,
        encodingType: configEncodingType,
      );

      rtcEngine.registerAudioEncodedFrameObserver(
        config: config,
        observer: theAudioEncodedFrameObserver,
      );

// Delay 500 milliseconds to ensure the registerAudioEncodedFrameObserver call completed.
      await Future.delayed(const Duration(milliseconds: 500));

      {
        Uint8List frameBuffer = Uint8List.fromList([1, 2, 3, 4, 5]);
        const int length = 10;
        const AudioCodecType audioEncodedFrameInfoCodec =
            AudioCodecType.audioCodecOpus;
        const bool advancedSettingsSpeech = true;
        const bool advancedSettingsSendEvenIfEmpty = true;
        const EncodedAudioFrameAdvancedSettings
            audioEncodedFrameInfoAdvancedSettings =
            EncodedAudioFrameAdvancedSettings(
          speech: advancedSettingsSpeech,
          sendEvenIfEmpty: advancedSettingsSendEvenIfEmpty,
        );
        const int audioEncodedFrameInfoSampleRateHz = 10;
        const int audioEncodedFrameInfoSamplesPerChannel = 10;
        const int audioEncodedFrameInfoNumberOfChannels = 10;
        const int audioEncodedFrameInfoCaptureTimeMs = 10;
        const EncodedAudioFrameInfo audioEncodedFrameInfo =
            EncodedAudioFrameInfo(
          codec: audioEncodedFrameInfoCodec,
          sampleRateHz: audioEncodedFrameInfoSampleRateHz,
          samplesPerChannel: audioEncodedFrameInfoSamplesPerChannel,
          numberOfChannels: audioEncodedFrameInfoNumberOfChannels,
          advancedSettings: audioEncodedFrameInfoAdvancedSettings,
          captureTimeMs: audioEncodedFrameInfoCaptureTimeMs,
        );

        final eventJson = {
          'frameBuffer': frameBuffer.toList(),
          'length': length,
          'audioEncodedFrameInfo': audioEncodedFrameInfo.toJson(),
        };

        irisTester.fireEvent(
            'AudioEncodedFrameObserver_onPlaybackAudioEncodedFrame',
            params: eventJson);
      }

      final eventCalled = await onPlaybackAudioEncodedFrameCompleter.future;
      expect(eventCalled, isTrue);

      {
        rtcEngine.unregisterAudioEncodedFrameObserver(
          theAudioEncodedFrameObserver,
        );
      }
// Delay 500 milliseconds to ensure the unregisterAudioEncodedFrameObserver call completed.
      await Future.delayed(const Duration(milliseconds: 500));

      await rtcEngine.release();
    },
    timeout: const Timeout(Duration(minutes: 1)),
  );

  testWidgets(
    'onMixedAudioEncodedFrame',
    (WidgetTester tester) async {
      RtcEngine rtcEngine = createAgoraRtcEngine();
      await rtcEngine.initialize(RtcEngineContext(
        appId: 'app_id',
        areaCode: AreaCode.areaCodeGlob.value(),
      ));

      final onMixedAudioEncodedFrameCompleter = Completer<bool>();
      final theAudioEncodedFrameObserver = AudioEncodedFrameObserver(
        onMixedAudioEncodedFrame: (Uint8List frameBuffer, int length,
            EncodedAudioFrameInfo audioEncodedFrameInfo) {
          onMixedAudioEncodedFrameCompleter.complete(true);
        },
      );

      const AudioEncodedFrameObserverPosition configPostionType =
          AudioEncodedFrameObserverPosition
              .audioEncodedFrameObserverPositionRecord;
      const AudioEncodingType configEncodingType =
          AudioEncodingType.audioEncodingTypeAac16000Low;
      const AudioEncodedFrameObserverConfig config =
          AudioEncodedFrameObserverConfig(
        postionType: configPostionType,
        encodingType: configEncodingType,
      );

      rtcEngine.registerAudioEncodedFrameObserver(
        config: config,
        observer: theAudioEncodedFrameObserver,
      );

// Delay 500 milliseconds to ensure the registerAudioEncodedFrameObserver call completed.
      await Future.delayed(const Duration(milliseconds: 500));

      {
        Uint8List frameBuffer = Uint8List.fromList([1, 2, 3, 4, 5]);
        const int length = 10;
        const AudioCodecType audioEncodedFrameInfoCodec =
            AudioCodecType.audioCodecOpus;
        const bool advancedSettingsSpeech = true;
        const bool advancedSettingsSendEvenIfEmpty = true;
        const EncodedAudioFrameAdvancedSettings
            audioEncodedFrameInfoAdvancedSettings =
            EncodedAudioFrameAdvancedSettings(
          speech: advancedSettingsSpeech,
          sendEvenIfEmpty: advancedSettingsSendEvenIfEmpty,
        );
        const int audioEncodedFrameInfoSampleRateHz = 10;
        const int audioEncodedFrameInfoSamplesPerChannel = 10;
        const int audioEncodedFrameInfoNumberOfChannels = 10;
        const int audioEncodedFrameInfoCaptureTimeMs = 10;
        const EncodedAudioFrameInfo audioEncodedFrameInfo =
            EncodedAudioFrameInfo(
          codec: audioEncodedFrameInfoCodec,
          sampleRateHz: audioEncodedFrameInfoSampleRateHz,
          samplesPerChannel: audioEncodedFrameInfoSamplesPerChannel,
          numberOfChannels: audioEncodedFrameInfoNumberOfChannels,
          advancedSettings: audioEncodedFrameInfoAdvancedSettings,
          captureTimeMs: audioEncodedFrameInfoCaptureTimeMs,
        );

        final eventJson = {
          'frameBuffer': frameBuffer.toList(),
          'length': length,
          'audioEncodedFrameInfo': audioEncodedFrameInfo.toJson(),
        };

        irisTester.fireEvent(
            'AudioEncodedFrameObserver_onMixedAudioEncodedFrame',
            params: eventJson);
      }

      final eventCalled = await onMixedAudioEncodedFrameCompleter.future;
      expect(eventCalled, isTrue);

      {
        rtcEngine.unregisterAudioEncodedFrameObserver(
          theAudioEncodedFrameObserver,
        );
      }
// Delay 500 milliseconds to ensure the unregisterAudioEncodedFrameObserver call completed.
      await Future.delayed(const Duration(milliseconds: 500));

      await rtcEngine.release();
    },
    timeout: const Timeout(Duration(minutes: 1)),
  );
}
