import 'dart:io';

import 'package:admob_flutter/admob_flutter.dart';

class AdsManager {
  static bool _testMode = false;

  ///
  static String get appId {
    if (Platform.isAndroid) {
      return "ca-app-pub-9553130506719526~4193602431";
    } else if (Platform.isIOS) {
      return "ca-app-pub-9553130506719526~7068728548";
    } else {
      throw new UnsupportedError("Unsupported platform");
    }
  }

  static String get bannerAdUnitId {
    if (_testMode == true) {
      return AdmobBanner.testAdUnitId;
    } else if (Platform.isAndroid) {
      return "ca-app-pub-9553130506719526/7117985921";
    } else if (Platform.isIOS) {
      return "ca-app-pub-9553130506719526/3053655439";
    } else {
      throw new UnsupportedError("Unsupported platform");
    }
  }

  static String get interstitialAdUnitId {
    if (_testMode == true) {
      return AdmobInterstitial.testAdUnitId;
    } else if (Platform.isAndroid) {
      return "ca-app-pub-9553130506719526/2974247852";
    } else if (Platform.isIOS) {
      return "ca-app-pub-9553130506719526/3516689861";
    } else {
      throw new UnsupportedError("Unsupported platform");
    }
  }

  static String get nativeAdUnitId {
    if (_testMode == true) {
      return "ca-app-pub-3940256099942544/2247696110";
    } else if (Platform.isAndroid) {
      return "ca-app-pub-9553130506719526/7072791493";
    } else if (Platform.isIOS) {
      return "ca-app-pub-9553130506719526/7695414503";
    } else {
      throw new UnsupportedError("Unsupported platform");
    }
  }
}
