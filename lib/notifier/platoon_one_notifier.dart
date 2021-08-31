
import 'dart:collection';

import 'package:flutter/cupertino.dart';
import '../model/PlatoonOne.dart';

class PlatoonOneNotifier with ChangeNotifier {
  List<PlatoonOne> _platoonOneList = [];
  PlatoonOne _currentPlatoonOne;

  UnmodifiableListView<PlatoonOne> get platoonOneList => UnmodifiableListView(_platoonOneList);

  PlatoonOne get currentPlatoonOne => _currentPlatoonOne;

  set platoonOneList(List<PlatoonOne> platoonOneList) {
    _platoonOneList = platoonOneList;
    notifyListeners();
  }

  set currentPlatoonOne(PlatoonOne platoonOne) {
    _currentPlatoonOne = platoonOne;
    notifyListeners();
  }

}