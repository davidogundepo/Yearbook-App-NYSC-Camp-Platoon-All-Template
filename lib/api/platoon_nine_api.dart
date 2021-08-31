
import 'package:cloud_firestore/cloud_firestore.dart';
import '../model/PlatoonNine.dart';
import '../notifier/platoon_nine_notifier.dart';

getPlatoonNine(PlatoonNineNotifier platoonNineNotifier) async{
  QuerySnapshot snapshot = await FirebaseFirestore.instance
      .collection('PlatoonNineCorpers').orderBy("name").get();

  List<PlatoonNine> _platoonNineList = [];

  snapshot.docs.forEach((document) {
    PlatoonNine platoonNine = PlatoonNine.fromMap(document.data());
    _platoonNineList.add(platoonNine);
  });

  platoonNineNotifier.platoonNineList = _platoonNineList;
}