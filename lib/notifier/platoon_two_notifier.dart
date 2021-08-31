
import 'dart:collection';

import 'package:flutter/cupertino.dart';
import '../model/PlatoonTwo.dart';

class PlatoonTwoNotifier with ChangeNotifier {
  List<PlatoonTwo> _platoonTwoList = [];
  PlatoonTwo _currentPlatoonTwo;

  UnmodifiableListView<PlatoonTwo> get platoonTwoList => UnmodifiableListView(_platoonTwoList);

  PlatoonTwo get currentPlatoonTwo => _currentPlatoonTwo;

  set platoonTwoList(List<PlatoonTwo> platoonTwoList) {
    _platoonTwoList = platoonTwoList;
    notifyListeners();
  }

  set currentPlatoonTwo(PlatoonTwo platoonTwo) {
    _currentPlatoonTwo = platoonTwo;
    notifyListeners();
  }

}