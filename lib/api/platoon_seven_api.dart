
import 'package:cloud_firestore/cloud_firestore.dart';
import '../model/PlatoonSeven.dart';
import '../notifier/platoon_seven_notifier.dart';

getPlatoonSeven(PlatoonSevenNotifier platoonSevenNotifier) async{
  QuerySnapshot snapshot = await FirebaseFirestore.instance
      .collection('PlatoonSevenCorpers').orderBy("name").get();

  List<PlatoonSeven> _platoonSevenList = [];

  snapshot.docs.forEach((document) {
    PlatoonSeven platoonSeven = PlatoonSeven.fromMap(document.data());
    _platoonSevenList.add(platoonSeven);
  });

  platoonSevenNotifier.platoonSevenList = _platoonSevenList;
}