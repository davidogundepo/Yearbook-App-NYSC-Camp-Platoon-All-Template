class CampOfficials {

  String name;
  String id;
  String hobbies;
  String phone;
  String twitter;
  String autoBio;
  String email;
  String image;
  String facebook;
  String instagram;
  String philosophy;
  String stateOfOrigin;
  String inceptionYear;
  String positionEnforcing;
  String academicQualification;

  CampOfficials.fromMap(Map<String, dynamic> data) {
    academicQualification = data['academic_qualification'];
    stateOfOrigin = data['state_of_origin'];
    id = data['id'];
    autoBio = data['autobio'];
    email = data['email'];
    facebook = data['facebook'];
    instagram = data['instagram'];
    image = data['image'];
    name = data['name'];
    phone = data['phone'];
    twitter = data['twitter'];
    hobbies = data['hobbies'];
    positionEnforcing = data['position_enforcing'];
    inceptionYear = data['inception_year'];
    philosophy = data['philosophy'];
  }

}