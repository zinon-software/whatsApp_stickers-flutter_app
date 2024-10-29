import 'dart:io';

class AdHelper {
  static bool _testMode = ! const bool.fromEnvironment('dart.vm.product');

  ///
   String get appId {
    if (Platform.isAndroid) {
      return "ca-app-pub-9553130506719526~4193602431";
    } else if (Platform.isIOS) {
      return "ca-app-pub-9553130506719526~7068728548";
    } else {
      throw new UnsupportedError("Unsupported platform");
    }
  }

   String get bannerAdUnitId {
    if (_testMode == true) {
      return "ca-app-pub-3940256099942544/6300978111";
    } else if (Platform.isAndroid) {
      return "ca-app-pub-9553130506719526/7117985921";
    } else if (Platform.isIOS) {
      return "ca-app-pub-9553130506719526/3053655439";
    } else {
      throw new UnsupportedError("Unsupported platform");
    }
  }

   String get interstitialAdUnitId {
    if (_testMode == true) {
      return "ca-app-pub-3940256099942544/1033173712";
    } else if (Platform.isAndroid) {
      return "ca-app-pub-9553130506719526/2974247852";
    } else if (Platform.isIOS) {
      return "ca-app-pub-9553130506719526/3516689861";
    } else {
      throw new UnsupportedError("Unsupported platform");
    }
  }

   String get nativeAdUnitId {
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

  
  String get rewardedAdUnitId {
    if (_testMode) {
      return "ca-app-pub-3940256099942544/5224354917";
    } else if (Platform.isAndroid) {
      return "";
    } else if (Platform.isIOS) {
      return "";
    } else {
      throw UnsupportedError("Unsupported Platform");
    }
  }


  String get rewardedInterstitialAdUnitId {
    if (_testMode) {
      return "ca-app-pub-3940256099942544/5224354917";
    } else if (Platform.isAndroid) {
      return "";
    } else if (Platform.isIOS) {
      return "";
    } else {
      throw UnsupportedError("Unsupported Platform");
    }
  }

}
