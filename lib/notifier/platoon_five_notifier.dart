
import 'dart:collection';

import 'package:flutter/cupertino.dart';
import '../model/PlatoonFive.dart';

class PlatoonFiveNotifier with ChangeNotifier {
  List<PlatoonFive> _platoonFiveList = [];
  PlatoonFive _currentPlatoonFive;

  UnmodifiableListView<PlatoonFive> get platoonFiveList => UnmodifiableListView(_platoonFiveList);

  PlatoonFive get currentPlatoonFive => _currentPlatoonFive;

  set platoonFiveList(List<PlatoonFive> platoonFiveList) {
    _platoonFiveList = platoonFiveList;
    notifyListeners();
  }

  set currentPlatoonFive(PlatoonFive platoonFive) {
    _currentPlatoonFive = platoonFive;
    notifyListeners();
  }

}