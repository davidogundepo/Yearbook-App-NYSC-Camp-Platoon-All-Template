
import 'package:cloud_firestore/cloud_firestore.dart';
import '../model/PlatoonTen.dart';
import '../notifier/platoon_ten_notifier.dart';

getPlatoonTen(PlatoonTenNotifier platoonTenNotifier) async{
  QuerySnapshot snapshot = await FirebaseFirestore.instance
      .collection('PlatoonTenCorpers').orderBy("name").get();

  List<PlatoonTen> _platoonTenList = [];

  snapshot.docs.forEach((document) {
    PlatoonTen platoonTen = PlatoonTen.fromMap(document.data());
    _platoonTenList.add(platoonTen);
  });

  platoonTenNotifier.platoonTenList = _platoonTenList;
}