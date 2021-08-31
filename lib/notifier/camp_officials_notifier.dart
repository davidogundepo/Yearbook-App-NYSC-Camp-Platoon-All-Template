

import 'dart:collection';

import 'package:flutter/cupertino.dart';
import '../model/CampOfficials.dart';

class CampOfficialsNotifier with ChangeNotifier {
  List<CampOfficials> _campOfficialsList = [];
  CampOfficials _currentCampOfficials;

  UnmodifiableListView<CampOfficials> get campOfficialsList => UnmodifiableListView(_campOfficialsList);

  CampOfficials get currentCampOfficials => _currentCampOfficials;

  set campOfficialsList(List<CampOfficials> campOfficialsList) {
    _campOfficialsList = campOfficialsList;
    notifyListeners();
  }

  set currentCampOfficials(CampOfficials campOfficials) {
    _currentCampOfficials = campOfficials;
    notifyListeners();
  }

}