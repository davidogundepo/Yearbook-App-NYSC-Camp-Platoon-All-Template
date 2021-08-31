
class CampArial {
  String image;
  String toastName;

  CampArial.fromMap(Map<String, dynamic> data) {
    image = data['image'];
    toastName = data['toastname'];
  }
}