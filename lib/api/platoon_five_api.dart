
import 'package:cloud_firestore/cloud_firestore.dart';
import '../model/PlatoonFive.dart';
import '../notifier/platoon_five_notifier.dart';

getPlatoonFive(PlatoonFiveNotifier platoonFiveNotifier) async{
  QuerySnapshot snapshot = await FirebaseFirestore.instance
      .collection('PlatoonFiveCorpers').orderBy("name").get();

  List<PlatoonFive> _platoonFiveList = [];

  snapshot.docs.forEach((document) {
    PlatoonFive platoonFive = PlatoonFive.fromMap(document.data());
    _platoonFiveList.add(platoonFive);
  });

  platoonFiveNotifier.platoonFiveList = _platoonFiveList;
}