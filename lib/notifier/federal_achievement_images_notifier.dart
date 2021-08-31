
import 'dart:collection';

import 'package:flutter/cupertino.dart';
import '../model/FederalAchievements.dart';

class FederalAchievementsNotifier with ChangeNotifier {
  List<FederalAchievements> _federalAchievementsList = [];
  FederalAchievements _currentFederalAchievements;

  UnmodifiableListView<FederalAchievements> get federalAchievementsList => UnmodifiableListView(_federalAchievementsList);

  FederalAchievements get currentFederalAchievements => _currentFederalAchievements;

  set federalAchievementsList(List<FederalAchievements> federalAchievementsList) {
    _federalAchievementsList = federalAchievementsList;
    notifyListeners();
  }

  set currentFederalAchievements(FederalAchievements federalAchievements) {
    _currentFederalAchievements = federalAchievements;
    notifyListeners();
  }

}