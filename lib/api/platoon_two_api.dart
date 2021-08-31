
import 'package:cloud_firestore/cloud_firestore.dart';
import '../model/PlatoonTwo.dart';
import '../notifier/platoon_two_notifier.dart';

getPlatoonTwo(PlatoonTwoNotifier platoonTwoNotifier) async{
  QuerySnapshot snapshot = await FirebaseFirestore.instance
      .collection('PlatoonTwoCorpers').orderBy("name").get();

  List<PlatoonTwo> _platoonTwoList = [];

  snapshot.docs.forEach((document) {
    PlatoonTwo platoonTwo = PlatoonTwo.fromMap(document.data());
    _platoonTwoList.add(platoonTwo);
  });

  platoonTwoNotifier.platoonTwoList = _platoonTwoList;
}