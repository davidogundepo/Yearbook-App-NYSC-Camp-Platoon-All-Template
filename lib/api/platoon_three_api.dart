
import 'package:cloud_firestore/cloud_firestore.dart';
import '../model/PlatoonThree.dart';
import '../notifier/platoon_three_notifier.dart';

getPlatoonThree(PlatoonThreeNotifier platoonThreeNotifier) async{
  QuerySnapshot snapshot = await FirebaseFirestore.instance
      .collection('PlatoonThreeCorpers').orderBy("name").get();

  List<PlatoonThree> _platoonThreeList = [];

  snapshot.docs.forEach((document) {
    PlatoonThree platoonThree = PlatoonThree.fromMap(document.data());
    _platoonThreeList.add(platoonThree);
  });

  platoonThreeNotifier.platoonThreeList = _platoonThreeList;
}