
class FederalAchievements {
  String image;
  String toastName;

  FederalAchievements.fromMap(Map<String, dynamic> data) {
    image = data['image'];
    toastName = data['toastname'];
  }
}