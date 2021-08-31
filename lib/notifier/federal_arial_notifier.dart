
import 'dart:collection';

import 'package:flutter/cupertino.dart';
import '../model/FederalArial.dart';

class FederalArialNotifier with ChangeNotifier {
  List<FederalArial> _federalArialList = [];
  FederalArial _currentFederalArial;

  UnmodifiableListView<FederalArial> get federalArialList => UnmodifiableListView(_federalArialList);

  FederalArial get currentFederalArial => _currentFederalArial;

  set federalArialList(List<FederalArial> federalArialList) {
    _federalArialList = federalArialList;
    notifyListeners();
  }

  set currentFederalArial(FederalArial federalArial) {
    _currentFederalArial = federalArial;
    notifyListeners();
  }

}