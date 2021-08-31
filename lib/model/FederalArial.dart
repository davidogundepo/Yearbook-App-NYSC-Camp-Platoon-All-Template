
class FederalArial {
  String image;
  String toastName;

  FederalArial.fromMap(Map<String, dynamic> data) {
    image = data['image'];
    toastName = data['toastname'];
  }
}