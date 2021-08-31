
import 'package:cloud_firestore/cloud_firestore.dart';
import '../model/FederalArial.dart';
import '../notifier/federal_arial_notifier.dart';

getFederalArial(FederalArialNotifier federalArialNotifier) async{
  QuerySnapshot snapshot = await FirebaseFirestore.instance.collection('FederalArialViews').get();

  List<FederalArial> _federalArialList = [];

  snapshot.docs.forEach((document) {
    FederalArial federalArial = FederalArial.fromMap(document.data());
    _federalArialList.add(federalArial);
  });

  federalArialNotifier.federalArialList = _federalArialList;
}