
import 'dart:collection';

import 'package:flutter/cupertino.dart';
import '../model/PlatoonNine.dart';

class PlatoonNineNotifier with ChangeNotifier {
  List<PlatoonNine> _platoonNineList = [];
  PlatoonNine _currentPlatoonNine;

  UnmodifiableListView<PlatoonNine> get platoonNineList => UnmodifiableListView(_platoonNineList);

  PlatoonNine get currentPlatoonNine => _currentPlatoonNine;

  set platoonNineList(List<PlatoonNine> platoonNineList) {
    _platoonNineList = platoonNineList;
    notifyListeners();
  }

  set currentPlatoonNine(PlatoonNine platoonNine) {
    _currentPlatoonNine = platoonNine;
    notifyListeners();
  }

}