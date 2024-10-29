import 'package:flutter/material.dart';

class InstallStickersModal extends ChangeNotifier{

  List _installedStickers = [];

  int get installedStickersSize => _installedStickers.length;

  List get installStickers => _installedStickers;

  void add(dynamic tempName){
    _installedStickers.add(tempName);
    notifyListeners();
  }

  void remove(dynamic tempName){
    _installedStickers.remove(tempName);
    notifyListeners();
  }

}