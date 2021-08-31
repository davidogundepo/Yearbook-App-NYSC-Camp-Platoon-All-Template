

import 'dart:collection';

import 'package:flutter/cupertino.dart';
import '../model/CampCorpersCoordinators.dart';

class CampCorpersCoordinatorsNotifier with ChangeNotifier {
  List<CampCorpersCoordinators> _campCorpersCoordinatorsList = [];
  CampCorpersCoordinators _currentCampCorpersCoordinators;

  UnmodifiableListView<CampCorpersCoordinators> get campCorpersCoordinatorsList => UnmodifiableListView(_campCorpersCoordinatorsList);

  CampCorpersCoordinators get currentCampCorpersCoordinators => _currentCampCorpersCoordinators;

  set campCorpersCoordinatorsList(List<CampCorpersCoordinators> campCorpersCoordinatorsList) {
    _campCorpersCoordinatorsList = campCorpersCoordinatorsList;
    notifyListeners();
  }

  set currentCampCorpersCoordinators(CampCorpersCoordinators campCorpersCoordinators) {
    _currentCampCorpersCoordinators = campCorpersCoordinators;
    notifyListeners();
  }

}