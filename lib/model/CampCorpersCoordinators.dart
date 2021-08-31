
class CampCorpersCoordinators {
  String image;
  String name;
  String positionEnforced;
  String platoon;
  String id;

  CampCorpersCoordinators.fromMap(Map<String, dynamic> data) {
    image = data['image'];
    name = data['name'];
    platoon = data['platoon'];
    positionEnforced = data['position_enforced'];
    id = data['id'];
  }
}