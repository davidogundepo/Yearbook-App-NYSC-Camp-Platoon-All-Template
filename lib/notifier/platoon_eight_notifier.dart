
import 'dart:collection';

import 'package:flutter/cupertino.dart';
import '../model/PlatoonEight.dart';

class PlatoonEightNotifier with ChangeNotifier {
  List<PlatoonEight> _platoonEightList = [];
  PlatoonEight _currentPlatoonEight;

  UnmodifiableListView<PlatoonEight> get platoonEightList => UnmodifiableListView(_platoonEightList);

  PlatoonEight get currentPlatoonEight => _currentPlatoonEight;

  set platoonEightList(List<PlatoonEight> platoonEightList) {
    _platoonEightList = platoonEightList;
    notifyListeners();
  }

  set currentPlatoonEight(PlatoonEight platoonEight) {
    _currentPlatoonEight = platoonEight;
    notifyListeners();
  }

}