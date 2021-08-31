
import 'package:cloud_firestore/cloud_firestore.dart';
import '../model/CampOfficials.dart';
import '../notifier/camp_officials_notifier.dart';

getCampOfficials(CampOfficialsNotifier lgOfficialsNotifier) async{
  QuerySnapshot snapshot = await FirebaseFirestore.instance
      .collection('CampOfficials').orderBy("id").get();

  List<CampOfficials> _campOfficials = [];

  snapshot.docs.forEach((document) {
    CampOfficials lgOfficials = CampOfficials.fromMap(document.data());
    _campOfficials.add(lgOfficials);
  });

  lgOfficialsNotifier.campOfficialsList = _campOfficials;
}