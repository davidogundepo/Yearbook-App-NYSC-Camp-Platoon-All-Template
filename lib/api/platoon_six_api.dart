
import 'package:cloud_firestore/cloud_firestore.dart';
import '../model/PlatoonSix.dart';
import '../notifier/platoon_six_notifier.dart';

getPlatoonSix(PlatoonSixNotifier platoonSixNotifier) async{
  QuerySnapshot snapshot = await FirebaseFirestore.instance
      .collection('PlatoonSixCorpers').orderBy("name").get();

  List<PlatoonSix> _platoonSixList = [];

  snapshot.docs.forEach((document) {
    PlatoonSix platoonSix = PlatoonSix.fromMap(document.data());
    _platoonSixList.add(platoonSix);
  });

  platoonSixNotifier.platoonSixList = _platoonSixList;
}