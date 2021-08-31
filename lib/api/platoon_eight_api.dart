
import 'package:cloud_firestore/cloud_firestore.dart';
import '../model/PlatoonEight.dart';
import '../notifier/platoon_eight_notifier.dart';

getPlatoonEight(PlatoonEightNotifier platoonEightNotifier) async{
  QuerySnapshot snapshot = await FirebaseFirestore.instance
      .collection('PlatoonEightCorpers').orderBy("name").get();

  List<PlatoonEight> _platoonEightList = [];

  snapshot.docs.forEach((document) {
    PlatoonEight platoonEight = PlatoonEight.fromMap(document.data());
    _platoonEightList.add(platoonEight);
  });

  platoonEightNotifier.platoonEightList = _platoonEightList;
}