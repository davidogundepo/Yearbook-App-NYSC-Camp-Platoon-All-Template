
import 'dart:collection';

import 'package:flutter/cupertino.dart';
import '../model/PlatoonThree.dart';

class PlatoonThreeNotifier with ChangeNotifier {
  List<PlatoonThree> _platoonThreeList = [];
  PlatoonThree _currentPlatoonThree;

  UnmodifiableListView<PlatoonThree> get platoonThreeList => UnmodifiableListView(_platoonThreeList);

  PlatoonThree get currentPlatoonThree => _currentPlatoonThree;

  set platoonThreeList(List<PlatoonThree> platoonThreeList) {
    _platoonThreeList = platoonThreeList;
    notifyListeners();
  }

  set currentPlatoonThree(PlatoonThree platoonThree) {
    _currentPlatoonThree = platoonThree;
    notifyListeners();
  }

}