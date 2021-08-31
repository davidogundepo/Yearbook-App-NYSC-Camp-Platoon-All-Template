
import 'package:cloud_firestore/cloud_firestore.dart';
import '../model/CampCorpersCoordinators.dart';
import '../notifier/camp_corpers_coordinators_notifier.dart';

getCampCorpersCoordinators(CampCorpersCoordinatorsNotifier campCorpersCoordinatorsNotifier) async{
  QuerySnapshot snapshot = await FirebaseFirestore.instance
      .collection('CampCorpersCoordinators').orderBy("id").get();

  List<CampCorpersCoordinators> _campCorpersCoordinators = [];

  snapshot.docs.forEach((document) {
    CampCorpersCoordinators campCorpersCoordinators = CampCorpersCoordinators.fromMap(document.data());
    _campCorpersCoordinators.add(campCorpersCoordinators);
  });

  campCorpersCoordinatorsNotifier.campCorpersCoordinatorsList = _campCorpersCoordinators;
}