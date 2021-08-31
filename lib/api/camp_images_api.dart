
import 'package:cloud_firestore/cloud_firestore.dart';
import '../model/CampArial.dart';
import '../notifier/camp_images_notifier.dart';

getCampArial(CampArialNotifier campArialNotifier) async{
  QuerySnapshot snapshot = await FirebaseFirestore.instance.collection('CampArialImages').get();

  List<CampArial> _campArialList = [];

  snapshot.docs.forEach((document) {
    CampArial campArial = CampArial.fromMap(document.data());
    _campArialList.add(campArial);
  });

  campArialNotifier.campArialList = _campArialList;
}