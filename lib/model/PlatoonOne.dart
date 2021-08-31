class PlatoonOne {

  String academicQualification;
  String almaMater;
  String autoBio;
  String bestMoment;
  String courseOfStudy;
  String dob;
  String email;
  String facebook;
  String graduationYear;
  String hobbies;
  String id;
  String image;
  String instagram;
  String linkedIn;
  String myDropline;
  String name;
  String nickname;
  String philosophy;
  String phone;
  String desiredPpaAssignment;
  String platoonExecutive;
  String platoonExecutivePosition;
  String desiredPpaLocation;
  String stateOfOrigin;
  String twitter;
  String snapchat;
  String tikTok;
  String telegram;
  String whatsNext;
  String whereYouLive;
  String worstMoment;
  String nyscBatch;
  String occupation;
  String favPlaceInCamp;
  String favCampActivity;
  String matchPastInCamp;

  PlatoonOne.fromMap(Map<String, dynamic> data) {
    academicQualification = data['academic_qualification'];
    almaMater = data['alma_mater'];
    courseOfStudy = data['course_of_study'];
    graduationYear = data['graduation_year'];
    linkedIn = data['linkedIn'];
    whatsNext = data['whats_next'];
    whereYouLive = data['where_you_live'];
    desiredPpaAssignment = data['desired_ppa_assignment'];
    desiredPpaLocation = data['desired_ppa_location'];
    platoonExecutive = data['platoon_executive'];
    platoonExecutivePosition = data['platoon_executive_position'];
    snapchat = data['snapchat'];
    tikTok = data['tiktok'];
    telegram = data['telegram'];
    stateOfOrigin = data['state_of_origin'];
    id = data['id'];
    autoBio = data['autobio'];
    bestMoment = data['best_moment'];
    email = data['email'];
    facebook = data['facebook'];
    image = data['image'];
    instagram = data['instagram'];
    name = data['name'];
    nickname = data['nickname'];
    phone = data['phone'];
    twitter = data['twitter'];
    dob = data['d_o_b'];
    hobbies = data['hobbies'];
    myDropline = data['my_dropline'];
    philosophy = data['philosophy'];
    worstMoment = data['worst_moment'];
    occupation = data['occupation'];
    favPlaceInCamp = data['fav_place_in_camp'];
    favCampActivity = data['fav_activity_in_camp'];
    matchPastInCamp = data['match_past_in_camp'];
  }

}