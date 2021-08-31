
import 'dart:collection';

import 'package:flutter/cupertino.dart';
import '../model/PlatoonTen.dart';

class PlatoonTenNotifier with ChangeNotifier {
  List<PlatoonTen> _platoonTenList = [];
  PlatoonTen _currentPlatoonTen;

  UnmodifiableListView<PlatoonTen> get platoonTenList => UnmodifiableListView(_platoonTenList);

  PlatoonTen get currentPlatoonTen => _currentPlatoonTen;

  set platoonTenList(List<PlatoonTen> platoonTenList) {
    _platoonTenList = platoonTenList;
    notifyListeners();
  }

  set currentPlatoonTen(PlatoonTen platoonTen) {
    _currentPlatoonTen = platoonTen;
    notifyListeners();
  }

}