
import 'dart:collection';

import 'package:flutter/cupertino.dart';
import '../model/CampArial.dart';

class CampArialNotifier with ChangeNotifier {
  List<CampArial> _campArialList = [];
  CampArial _currentCampArial;

  UnmodifiableListView<CampArial> get campArialList => UnmodifiableListView(_campArialList);

  CampArial get currentCampArial => _currentCampArial;

  set campArialList(List<CampArial> campArialList) {
    _campArialList = campArialList;
    notifyListeners();
  }

  set currentCampArial(CampArial campArial) {
    _currentCampArial = campArial;
    notifyListeners();
  }

}