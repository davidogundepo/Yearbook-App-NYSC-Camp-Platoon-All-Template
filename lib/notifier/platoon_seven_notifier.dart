
import 'dart:collection';

import 'package:flutter/cupertino.dart';
import '../model/PlatoonSeven.dart';

class PlatoonSevenNotifier with ChangeNotifier {
  List<PlatoonSeven> _platoonSevenList = [];
  PlatoonSeven _currentPlatoonSeven;

  UnmodifiableListView<PlatoonSeven> get platoonSevenList => UnmodifiableListView(_platoonSevenList);

  PlatoonSeven get currentPlatoonSeven => _currentPlatoonSeven;

  set platoonSevenList(List<PlatoonSeven> platoonSevenList) {
    _platoonSevenList = platoonSevenList;
    notifyListeners();
  }

  set currentPlatoonSeven(PlatoonSeven platoonSeven) {
    _currentPlatoonSeven = platoonSeven;
    notifyListeners();
  }

}