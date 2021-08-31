
import 'dart:collection';

import 'package:flutter/cupertino.dart';
import '../model/PlatoonFour.dart';

class PlatoonFourNotifier with ChangeNotifier {
  List<PlatoonFour> _platoonFourList = [];
  PlatoonFour _currentPlatoonFour;

  UnmodifiableListView<PlatoonFour> get platoonFourList => UnmodifiableListView(_platoonFourList);

  PlatoonFour get currentPlatoonFour => _currentPlatoonFour;

  set platoonFourList(List<PlatoonFour> platoonFourList) {
    _platoonFourList = platoonFourList;
    notifyListeners();
  }

  set currentPlatoonFour(PlatoonFour platoonFour) {
    _currentPlatoonFour = platoonFour;
    notifyListeners();
  }

}