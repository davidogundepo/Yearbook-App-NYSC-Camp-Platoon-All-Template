
import 'package:cloud_firestore/cloud_firestore.dart';
import '../model/PlatoonFour.dart';
import '../notifier/platoon_four_notifier.dart';

getPlatoonFour(PlatoonFourNotifier platoonFourNotifier) async{
  QuerySnapshot snapshot = await FirebaseFirestore.instance
      .collection('PlatoonFourCorpers').orderBy("name").get();

  List<PlatoonFour> _platoonFourList = [];

  snapshot.docs.forEach((document) {
    PlatoonFour platoonFour = PlatoonFour.fromMap(document.data());
    _platoonFourList.add(platoonFour);
  });

  platoonFourNotifier.platoonFourList = _platoonFourList;
}