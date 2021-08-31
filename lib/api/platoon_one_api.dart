
import 'package:cloud_firestore/cloud_firestore.dart';
import '../model/PlatoonOne.dart';
import '../notifier/platoon_one_notifier.dart';

getPlatoonOne(PlatoonOneNotifier platoonOneNotifier) async{
  QuerySnapshot snapshot = await FirebaseFirestore.instance
      .collection('PlatoonOneCorpers').orderBy("name").get();

  List<PlatoonOne> _platoonOneList = [];

  snapshot.docs.forEach((document) {
    PlatoonOne platoonOne = PlatoonOne.fromMap(document.data());
    _platoonOneList.add(platoonOne);
  });

  platoonOneNotifier.platoonOneList = _platoonOneList;
}