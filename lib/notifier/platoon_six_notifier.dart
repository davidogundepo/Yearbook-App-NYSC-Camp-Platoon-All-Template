
import 'dart:collection';

import 'package:flutter/cupertino.dart';
import '../model/PlatoonSix.dart';

class PlatoonSixNotifier with ChangeNotifier {
  List<PlatoonSix> _platoonSixList = [];
  PlatoonSix _currentPlatoonSix;

  UnmodifiableListView<PlatoonSix> get platoonSixList => UnmodifiableListView(_platoonSixList);

  PlatoonSix get currentPlatoonSix => _currentPlatoonSix;

  set platoonSixList(List<PlatoonSix> platoonSixList) {
    _platoonSixList = platoonSixList;
    notifyListeners();
  }

  set currentPlatoonSix(PlatoonSix platoonSix) {
    _currentPlatoonSix = platoonSix;
    notifyListeners();
  }

}