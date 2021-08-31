
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:provider/provider.dart';
import '../api/federal_achievement_images_api.dart';
import '../api/federal_arial_images_api.dart';
import '../notifier/federal_achievement_images_notifier.dart';
import '../notifier/federal_arial_notifier.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:url_launcher/url_launcher.dart';

String nyscName = "NYSC";
String aboutNYSC = "About $nyscName";

String visionSwipe = "Swipe left on 'OUR VISION STATEMENT'  >>>";
String visionTitle = "OUR VISION STATEMENT";
String visionStatement = "To develop a sound and result oriented organization that is strongly committed to its set objectives particularly those of national unity and even development. An organization that is well motivated and capable of bringing out the best qualities in our youths and imparting in them the right attitude and values for nation-building. An organization that serves as a catalyst to national development, and a source of pride and fulfillment to its participating graduate youths";
String missionTitle = "OUR MISSION STATEMENT";
String missionStatement = "To build a pragmatic organization that is committed to its set objectives with the ultimate goal of producing future leadership with positive national ethos-Leadership that is vibrant, proud and committed to the unity and even development of the Nigeria State.\n\nTo be at the fore front of National development efforts, as well as serve as a profitable platform for imparting in our youths values of nationalism, patriotism, loyalty and accountable leadership.\n\nTo raise the moral tone of our youths by giving them opportunity to learn about high ideals of national achievement, social and cultural improvement.\n\nTo develop in our youths attitude of mind acquired through shared experience, and suitable training which would make them more amenable to mobilization in the national interest.\n\nTo ensure Nigerian youths acquire the spirit of self-reliance, a reliable source of economic empowerment and effective participation in nation building.\n\nTo develop an organization that is alive to its responsibilities and responsive to the needs of the country.";

String coreValues = "OUR CORE VALUES";
String cvStatement1 = "1. Patriotism\n\n";
String cvStatement2 = "2. Integrity\n\n";
String cvStatement3 = "3. Efficiency\n\n";
String cvStatement4 = "4. Commitment\n\n";
String cvStatement5 = "4. Team Work\n\n";


String whyNYSC = "WHY $nyscName?".toUpperCase();
String whyNYSCStatement = "$nyscName scheme was created in a bid to reconstruct, reconcile and rebuild the country after the Nigerian Civil war. The unfortunate antecedents in our national history gave impetus to the establishment of the National Youth Service Corps by decree No.24 of 22nd May 1973 which stated that the NYSC is being established with a view to the proper encouragement and development of common ties among the youths of Nigeria and the promotion of national unity.";
String staffBody = "$nyscName Staff Body all over Nigeria\n\n";
String staffBodyStatement = "We have 4,054 NYSC Staff all over the states of Nigeria.";
String populationChart = "$nyscName 2020/2021 Population Chart";
String corperBody = "Corp Members all over Nigeria\n\n";
String corperBodyStatement = "We currently have 314,064 corp members serving in $nyscName all over Nigeria, 2020/2021 session through Batch A till Batch C.\n186,541 male corp members and 127,523 female corp members.\n9,377,910 corp members have graduated from $nyscName, since the inception, 22nd May 1973.";
String corperPopulationChart = "$nyscName 2020/2021 Corp Member Population Chart";

String orientationCampSwipe = "Swipe up for all Orientation Camps";
String orientationCamp = "Addresses of NYSC Orientation Camps in all states";
String stateOrientationCamp1 = "1. ABIA State. NYSC Permanent Orientation Camp, Umunna, Bende Local Government Area, Abia State.\n\n";
String stateOrientationCamp2 = "2. ADAMAWA State. NYSC Permanent Orientation Camp, Lapondo Road, Damare, Girei LGA, Adamawa State.\n\n";
String stateOrientationCamp3 = "3. AKWA IBOM State. NYSC Permanent Orientation Camp, Ikot Itie Udung, Nsit Atai Local Government Area, Akwa Ibom State.\n\n";
String stateOrientationCamp4 = "4. ANAMBRA State. NYSC Permanent Orientation Camp, Progressive Senior Secondary School, Umunya, Oyi Local Government Area, Anambra State.\n\n";
String stateOrientationCamp5 = "5. BAUCHI State. NYSC Permanent Orientation camp, KM 60 Wailo, Ganjuwa Local Government Council, Bauchi State.\n\n";
String stateOrientationCamp6 = "6. BAYELSA State. Kaiama Grammar School , Kaiama, Kolokuma/Opokuma L.G.A Kaiama Grammar School, Kaiama, Kolokoma-Opokuma Local Government Area, Bayelsa State.\n\n";
String stateOrientationCamp7 = "7. BENUE State. NYSC Permanent Orientation Camp, Wannune, Tarka Local Government Area, Kilometer 35 Makurdi Gboko Road, Benue State.\n\n";
String stateOrientationCamp8 = "8. BORNO State. College of Peace and Disaster Management, Nigeria Security and Civil Defence Corps (NSCDC), Babbar-Ruga Batsari Road Katsina, Katsina State.\n\n";
String stateOrientationCamp9 = "9. CROSS RIVER State. NYSC Permanent Orientation Camp, Obubra, Obubra Local Government Area, Cross River State.\n\n";
String stateOrientationCamp10 = "10. DELTA State. NYSC Permanent Orientation Camp Former Martins TTC, Issele-Uku, Aniocha North L.G.A. Delta State.\n\n";
String stateOrientationCamp11 = "11. EBONYI State. NYSC Permanent Orientation Camp, Macgregor College, Afikpo Local Government Area, Ebonyi State.\n\n";
String stateOrientationCamp12 = "12. EDO State. Okada Grammar School, Okada, Ovia North-East Local Government Area, Edo State.\n\n";
String stateOrientationCamp13 = "13. EKITI State. NYSC Permanent Orientation Camp, Ise-Orun/Emure Local Government Area, Ekiti State.\n\n";
String stateOrientationCamp14 = "14. ENUGU State. NYSC Permanent Orientation Camp, Awgu Local Government Area, Enugu State.\n\n";
String stateOrientationCamp15 = "15. FCT. NYSC Permanent Orientation Camp, Kubwa, Bwari Area Council, FCT.\n\n";
String stateOrientationCamp16 = "16. GOMBE State. NYSC Temporary Orientation Camp, Science Technical College, Amada, KM 21, Gombe-Bauchi Highway, Near International Airport, Gombe State.\n\n";
String stateOrientationCamp17 = "17. IMO State. NYSC Temporary Orientation Camp Former Girl's Model Secondary School Eziama Obaire Nkwerre Local Govt Area, Imo State.\n\n";
String stateOrientationCamp18 = "18. JIGAWA State. NYSC Permanent Camp, opposite Army Barrack, Fanisua Dutse Local Government Area, Jigawa State.\n\n";
String stateOrientationCamp19 = "19. KADUNA State. NYSC Permanent Orientation Camp, Kaduna – Abuja Road, Kaduna State.\n\n";
String stateOrientationCamp20 = "20. KANO State. NYSC Permanent Orientation Camp, Kusala Dam, Karaye, Karaye Local Government, Kano State.\n\n";
String stateOrientationCamp21 = "21. KATSINA State. Youth Multi-purpose Centre/ NYSC Permanent Orientation Camp, Mani Road, Katsina State.\n\n";
String stateOrientationCamp22 = "22. KEBBI State. NYSC Permanent Orientation Camp, Dakingari Local Government Area, Kebbi State.\n\n";
String stateOrientationCamp23 = "23. KOGI State. NYSC Permanent Orientation Camp, Asaya, Kabba Local Government Area, Kogi State.\n\n";
String stateOrientationCamp24 = "24. KWARA State. NYSC Permanent Orientation Camp, Yikpata, Edu Local Government Area, Kwara State.\n\n";
String stateOrientationCamp25 = "25. LAGOS State. NYSC Permanent Orientation Camp, Iyana Ipaja, Agege, Lagos State.\n\n";
String stateOrientationCamp26 = "26. NASSARAWA State. Magaji Dan-Yamusa Permanent Orientation Camp, Keffi, Nasarawa State.\n\n";
String stateOrientationCamp27 = "27. NIGER State. NYSC Permanent Orientation Camp, (Former Abubakar, Dada Senior Secondary School), Paiko, Niger State.\n\n";
String stateOrientationCamp28 = "28. OGUN State. NYSC Permanent Orientation Camp, Ikenne Road, Sagamu Local Government Area, Sagamu, Ogun State.\n\n";
String stateOrientationCamp29 = "29. ONDO State. NYSC Permanent Orientation Camp, Ikare-Akoko Local Government Area, Ondo State.\n\n";
String stateOrientationCamp30 = "30. OSUN State. NYSC Permanent Orientation Camp, Aisu College Hospital Road, Ede North Local Government Area, Ede, Osun State.\n\n";
String stateOrientationCamp31 = "31. OYO State. Government Technical College, Iseyin Local Government Area, Iseyin, Oyo State.\n\n";
String stateOrientationCamp32 = "32. PLATEAU State. NYSC Permanent Orientation Camp, Mangu, Mangu Local Government Area, Plateau State.\n\n";
String stateOrientationCamp33 = "33. RIVERS State. NYSC Permanent Orientation Camp, Nonwa-Gbam Tai Local Government Area, Rivers State.\n\n";
String stateOrientationCamp34 = "34. SOKOTO State. NYSC Permanent Orientation Camp, Wamakko,Wamakko Local Govt Area, Sokoto State.\n\n";
String stateOrientationCamp35 = "35. TARABA State. NYSC Permanent Orientation Camp, Sibre Airport Road, Jalingo, Taraba State.\n\n";
String stateOrientationCamp36 = "36. YOBE State. College of Administration and Business Studies, Potiskum, Yobe State.\n\n";
String stateOrientationCamp37 = "37. ZAMFARA State. NYSC Permanent Orientation Camp, Beside FRSC Office, Tsafe Local Government Area, Zamfara State.\n\n";

String cdsGroups = "Some CDS Groups NYSC Provided to it's Corp Members\n\n";
String someCdsGroups1 = "1. Red Cross CDS\n";
String someCdsGroups2 = "2. Financial Inclusion CDS Group\n";
String someCdsGroups3 = "3. EFCC CDS\n";
String someCdsGroups4 = "4. Road Safety CDS\n";
String someCdsGroups5 = "5. HIV/AIDS CDS\n";
String someCdsGroups6 = "6. Editorial CDS\n";
String someCdsGroups7 = "7. NDLEA CDS\n";
String someCdsGroups8 = "8. Cultural and Tourism CDS\n";
String someCdsGroups9 = "9. Medical and Health CDS\n";


String nyscArialViewsSwipe = "Swipe left or right for more photos";
String nyscArialViews = "Some Arial views of $nyscName activities, during Orientation Camping";
String nyscAchievementsSwipe = "Swipe left or right for more photos";
String nyscAchievements = "Some corp member achievements during their service year";
String moreInfoAboutNYSC = "For more information about $nyscName please trust and click me";
String moreInfoAboutNYSCURL = "https://www.nysc.gov.ng/";

double maleCorperPopulation = 186541;
double femaleCorperPopulation = 127523;
double staffPopulation = 4054;



Color backgroundColor = Color.fromRGBO(25, 59, 111, 1);
Color appBarBackgroundColor = Color.fromRGBO(25, 49, 111, 1);
Color appBarIconColor = Colors.blueGrey;
Color appBarBackgroundTextColor = Colors.blueGrey;
Color cardBackgroundColor = Color.fromRGBO(25, 49, 111, 1);
Color textColor = Color.fromRGBO(25, 49, 111, 1);
Color cardTextColor = Colors.blueGrey;
Color materialColor = Colors.transparent;
Color materialInkWellColor = Colors.blue.withAlpha(80);
Color materialTextColor = Colors.blueGrey;
Color containerColor = Colors.blueGrey.withAlpha(50);
Color containerTextColor = Colors.white.withAlpha(110);
Color containerColor2 = Colors.blueGrey;
Color chartBackgroundColor = Colors.grey[200];
Color chartTextColor = Colors.white;
Color chartTextColorTwo = Color.fromRGBO(25, 49, 111, 1);
Color firstFederalNYSCChartColor = Colors.white.withAlpha(110);
Color secondFederalNYSCChartColor = Color.fromRGBO(25, 49, 111, 1);
Color thirdFederalNYSCChartColor = Colors.lightBlue;
Color firstFederalNYSCCorpMemberChartColor = Color.fromRGBO(25, 49, 111, 1);
Color secondFederalNYSCCorpMemberChartColor = Color.fromRGBO(184, 186, 181, 1);

class AboutNYSCFederalState extends StatefulWidget {

  @override
  _AboutNYSCFederalState createState() => _AboutNYSCFederalState();
}

class _AboutNYSCFederalState extends State<AboutNYSCFederalState> {

  final controlla = PageController(
    initialPage: 0,
  );

  var scrollDirection = Axis.horizontal;

  @override
  void initState() {
    FederalArialNotifier federalArialNotifier = Provider.of<FederalArialNotifier>(context, listen: false);
    getFederalArial(federalArialNotifier);

    FederalAchievementsNotifier federalAchievementsNotifier = Provider.of<FederalAchievementsNotifier>(context, listen: false);
    getFederalAchievements(federalAchievementsNotifier);

    federalNYSCMap.putIfAbsent("Male Corp Members", () => 186541);
    federalNYSCMap.putIfAbsent("Female Corp Members", () => 127523);
    federalNYSCMap.putIfAbsent("NYSC Federal Staff", () => 4054);

    federalNYSCCorpMemberMap.putIfAbsent("Male Corp Members", () => 186541);
    federalNYSCCorpMemberMap.putIfAbsent("Female Corp Members", () => 127523);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    FederalArialNotifier federalArialNotifier = Provider.of<FederalArialNotifier>(context);
    FederalAchievementsNotifier federalAchievementsNotifier = Provider.of<FederalAchievementsNotifier>(context);

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(aboutNYSC,
        style: TextStyle(
          color: appBarBackgroundTextColor
        ),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: appBarIconColor),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 10,
        backgroundColor: appBarBackgroundColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Container(
                child: Material (
                  color: materialColor,
                  child: InkWell(
                    splashColor: materialInkWellColor,
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 5),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Text(visionSwipe,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: containerTextColor,
                              fontSize: 19,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    color: containerColor,
                    borderRadius: new BorderRadius.circular(5)
                ),
              ),
            ),
            Container(
              height: 500,
              child: PageView(
                controller: controlla,
                scrollDirection: scrollDirection,
                pageSnapping: true,
                children: <Widget>[
                  Container(
                    child: Card(
                      color: cardBackgroundColor,
                      elevation: 4,
                      margin:   EdgeInsets.all(24),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Center(
                                child: Container(
                                  child: Text(
                                    visionTitle,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: cardTextColor,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30, left: 8, right: 8, bottom: 8),
                              child: Text(
                                visionStatement,
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    color: cardTextColor,
                                    fontSize: 18
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Card(
                      color: cardBackgroundColor,
                      elevation: 4,
                      margin:   EdgeInsets.all(24),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Center(
                                child: Container(
                                  child: Text(
                                    missionTitle,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: cardTextColor,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30, left: 8, right: 8, bottom: 8),
                              child: Text(
                                missionStatement,
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    color: cardTextColor,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Card(
                      color: cardBackgroundColor,
                      elevation: 4,
                      margin:   EdgeInsets.all(24),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Center(
                                child: Container(
                                  child: Text(
                                    coreValues,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: cardTextColor,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30, left: 8, right: 8, bottom: 8),
                              child: RichText(
                                textAlign: TextAlign.justify,
                                text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: cvStatement1,
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: cardTextColor,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    TextSpan(
                                      text: cvStatement2,
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: cardTextColor,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    TextSpan(
                                      text: cvStatement3,
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: cardTextColor,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    TextSpan(
                                      text: cvStatement4,
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: cardTextColor,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    TextSpan(
                                      text: cvStatement5,
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: cardTextColor,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Card(
                      color: cardBackgroundColor,
                      elevation: 4,
                      margin:   EdgeInsets.all(24),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Center(
                                child: Container(
                                  child: Text(
                                    whyNYSC,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: cardTextColor,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30, left: 8, right: 8, bottom: 8),
                              child: Text(
                                whyNYSCStatement,
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    color: cardTextColor,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
              child: Container(
                child: Material (
                  color: materialColor,
                  child: InkWell(
                    splashColor: materialInkWellColor,
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 15, top: 15, left: 10, right: 10),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: RichText(
                          textAlign: TextAlign.justify,
                          text:TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: staffBody,
                                  style: TextStyle(
                                    color: containerTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: staffBodyStatement,
                                  style: TextStyle(
                                    color: containerTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    color: containerColor,
                    borderRadius: new BorderRadius.circular(10)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
              child: Container(
                height: 250,
                decoration: BoxDecoration(
                    color: containerColor,
                    borderRadius: new BorderRadius.circular(10)
                ),
                child: Material(
                  color: materialColor,
                  child: InkWell(
                    splashColor: materialInkWellColor,
                    onTap: () {},
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 15, bottom: 30, left: 10),
                            child: Text(populationChart,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: containerTextColor,
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                          PieChart(
                            legendStyle: TextStyle(
                              color: containerTextColor,
                            ),
                            dataMap: federalNYSCMap,
                            animationDuration: Duration(seconds: 10),
                            chartLegendSpacing: 42.0,
                            chartRadius: MediaQuery.of(context).size.width / 2.7,
                            showChartValuesInPercentage: false,
                            showChartValues: true,
                            showChartValuesOutside: false,
                            chartValueBackgroundColor: containerTextColor,
                            colorList: federalNYSCColorList,
                            showLegends: true,
                            legendPosition: LegendPosition.right,
                            decimalPlaces: 0,
                            showChartValueLabel: true,
                            initialAngle: 0,
                            chartValueStyle: defaultChartValueStyle.copyWith(
                              color: chartTextColor,
                            ),
                            chartType: ChartType.disc,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
              child: Container(
                child: Material (
                  color: materialColor,
                  child: InkWell(
                    splashColor: materialInkWellColor,
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 15, top: 15, left: 10, right: 10),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: RichText(
                          textAlign: TextAlign.justify,
                          text:TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: corperBody,
                                  style: TextStyle(
                                    color: containerTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: corperBodyStatement,
                                  style: TextStyle(
                                    color: containerTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    color: containerColor,
                    borderRadius: new BorderRadius.circular(10)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
              child: Container(
                height: 270,
                decoration: BoxDecoration(
                    color: containerColor,
                    borderRadius: new BorderRadius.circular(10)
                ),
                child: Material(
                  color: materialColor,
                  child: InkWell(
                    splashColor: materialInkWellColor,
                    onTap: () {},
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 15, bottom: 30, left: 10),
                            child: Text(corperPopulationChart,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: containerTextColor,
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                          PieChart(
                            legendStyle: TextStyle(
                              color: containerTextColor,
                            ),
                            dataMap: federalNYSCCorpMemberMap,
                            animationDuration: Duration(seconds: 10),
                            chartLegendSpacing: 42.0,
                            chartRadius: MediaQuery.of(context).size.width / 2.7,
                            showChartValuesInPercentage: false,
                            showChartValues: true,
                            showChartValuesOutside: false,
                            chartValueBackgroundColor: chartBackgroundColor,
                            colorList: federalNYSCCorpMemberColorList,
                            showLegends: true,
                            legendPosition: LegendPosition.right,
                            decimalPlaces: 0,
                            showChartValueLabel: true,
                            initialAngle: 0,
                            chartValueStyle: defaultChartValueStyle.copyWith(
                              color: chartTextColorTwo.withAlpha(160),
                            ),
                            chartType: ChartType.ring,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 10),
              child: Text(orientationCamp,
                style: TextStyle(
                    fontSize: 20,
                    color: containerTextColor,
                    fontWeight: FontWeight.w500
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
              child: Container(
                child: Material (
                  color: materialColor,
                  child: InkWell(
                    splashColor: materialInkWellColor,
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 5),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Text(orientationCampSwipe,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: containerTextColor,
                              fontSize: 19,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    color: containerColor,
                    borderRadius: new BorderRadius.circular(5)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
              child: Container(
                height: 300,
                child: Material (
                  color: materialColor,
                  child: InkWell(
                    splashColor: materialInkWellColor,
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 15, top: 15, left: 10, right: 10),
                      child: SingleChildScrollView(
                        child: RichText(
                          textAlign: TextAlign.justify,
                          text:TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: stateOrientationCamp1,
                                  style: TextStyle(
                                    color: containerTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )
                              ),
                              TextSpan(
                                  text: stateOrientationCamp2,
                                  style: TextStyle(
                                    color: containerTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )
                              ),
                              TextSpan(
                                  text: stateOrientationCamp3,
                                  style: TextStyle(
                                    color: containerTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )
                              ),
                              TextSpan(
                                  text: stateOrientationCamp4,
                                  style: TextStyle(
                                    color: containerTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )
                              ),
                              TextSpan(
                                  text: stateOrientationCamp5,
                                  style: TextStyle(
                                    color: containerTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )
                              ),
                              TextSpan(
                                  text: stateOrientationCamp6,
                                  style: TextStyle(
                                    color: containerTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )
                              ),
                              TextSpan(
                                  text: stateOrientationCamp7,
                                  style: TextStyle(
                                    color: containerTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )
                              ),
                              TextSpan(
                                  text: stateOrientationCamp8,
                                  style: TextStyle(
                                    color: containerTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )
                              ),
                              TextSpan(
                                  text: stateOrientationCamp9,
                                  style: TextStyle(
                                    color: containerTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )
                              ),
                              TextSpan(
                                  text: stateOrientationCamp10,
                                  style: TextStyle(
                                    color: containerTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )
                              ),
                              TextSpan(
                                  text: stateOrientationCamp11,
                                  style: TextStyle(
                                    color: containerTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )
                              ),
                              TextSpan(
                                  text: stateOrientationCamp12,
                                  style: TextStyle(
                                    color: containerTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )
                              ),
                              TextSpan(
                                  text: stateOrientationCamp13,
                                  style: TextStyle(
                                    color: containerTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )
                              ),
                              TextSpan(
                                  text: stateOrientationCamp14,
                                  style: TextStyle(
                                    color: containerTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )
                              ),
                              TextSpan(
                                  text: stateOrientationCamp15,
                                  style: TextStyle(
                                    color: containerTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )
                              ),
                              TextSpan(
                                  text: stateOrientationCamp16,
                                  style: TextStyle(
                                    color: containerTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )
                              ),
                              TextSpan(
                                  text: stateOrientationCamp17,
                                  style: TextStyle(
                                    color: containerTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )
                              ),
                              TextSpan(
                                  text: stateOrientationCamp18,
                                  style: TextStyle(
                                    color: containerTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )
                              ),
                              TextSpan(
                                  text: stateOrientationCamp19,
                                  style: TextStyle(
                                    color: containerTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )
                              ),
                              TextSpan(
                                  text: stateOrientationCamp20,
                                  style: TextStyle(
                                    color: containerTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )
                              ),
                              TextSpan(
                                  text: stateOrientationCamp21,
                                  style: TextStyle(
                                    color: containerTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )
                              ),
                              TextSpan(
                                  text: stateOrientationCamp22,
                                  style: TextStyle(
                                    color: containerTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )
                              ),
                              TextSpan(
                                  text: stateOrientationCamp23,
                                  style: TextStyle(
                                    color: containerTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )
                              ),
                              TextSpan(
                                  text: stateOrientationCamp24,
                                  style: TextStyle(
                                    color: containerTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )
                              ),
                              TextSpan(
                                  text: stateOrientationCamp25,
                                  style: TextStyle(
                                    color: containerTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )
                              ),
                              TextSpan(
                                  text: stateOrientationCamp26,
                                  style: TextStyle(
                                    color: containerTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )
                              ),
                              TextSpan(
                                  text: stateOrientationCamp27,
                                  style: TextStyle(
                                    color: containerTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )
                              ),
                              TextSpan(
                                  text: stateOrientationCamp28,
                                  style: TextStyle(
                                    color: containerTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )
                              ),
                              TextSpan(
                                  text: stateOrientationCamp29,
                                  style: TextStyle(
                                    color: containerTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )
                              ),
                              TextSpan(
                                  text: stateOrientationCamp30,
                                  style: TextStyle(
                                    color: containerTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )
                              ),
                              TextSpan(
                                  text: stateOrientationCamp31,
                                  style: TextStyle(
                                    color: containerTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )
                              ),
                              TextSpan(
                                  text: stateOrientationCamp32,
                                  style: TextStyle(
                                    color: containerTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )
                              ),
                              TextSpan(
                                  text: stateOrientationCamp33,
                                  style: TextStyle(
                                    color: containerTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )
                              ),
                              TextSpan(
                                  text: stateOrientationCamp34,
                                  style: TextStyle(
                                    color: containerTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )
                              ),
                              TextSpan(
                                  text: stateOrientationCamp35,
                                  style: TextStyle(
                                    color: containerTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )
                              ),
                              TextSpan(
                                  text: stateOrientationCamp36,
                                  style: TextStyle(
                                    color: containerTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )
                              ),
                              TextSpan(
                                  text: stateOrientationCamp37,
                                  style: TextStyle(
                                    color: containerTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )
                              ),

                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    color: containerColor,
                    borderRadius: new BorderRadius.circular(10)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
              child: Container(
                height: 300,
                child: Material (
                  color: materialColor,
                  child: InkWell(
                    splashColor: materialInkWellColor,
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 15, top: 15, left: 10, right: 10),
                      child: SingleChildScrollView(
                        child: RichText(
                          textAlign: TextAlign.justify,
                          text:TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: cdsGroups,
                                  style: TextStyle(
                                    color: containerTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: someCdsGroups1,
                                  style: TextStyle(
                                    color: containerTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )
                              ),
                              TextSpan(
                                  text: someCdsGroups2,
                                  style: TextStyle(
                                    color: containerTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )
                              ),
                              TextSpan(
                                  text: someCdsGroups3,
                                  style: TextStyle(
                                    color: containerTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )
                              ),
                              TextSpan(
                                  text: someCdsGroups4,
                                  style: TextStyle(
                                    color: containerTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )
                              ),
                              TextSpan(
                                  text: someCdsGroups5,
                                  style: TextStyle(
                                    color: containerTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )
                              ),
                              TextSpan(
                                  text: someCdsGroups6,
                                  style: TextStyle(
                                    color: containerTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )
                              ),
                              TextSpan(
                                  text: someCdsGroups7,
                                  style: TextStyle(
                                    color: containerTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )
                              ),
                              TextSpan(
                                  text: someCdsGroups8,
                                  style: TextStyle(
                                    color: containerTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )
                              ),
                              TextSpan(
                                  text: someCdsGroups9,
                                  style: TextStyle(
                                    color: containerTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )
                              ),

                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    color: containerColor,
                    borderRadius: new BorderRadius.circular(10)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 10),
              child: Text(nyscArialViews,
                style: TextStyle(
                    fontSize: 20,
                    color: containerTextColor,
                    fontWeight: FontWeight.w500
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
              child: Container(
                child: Material (
                  color: materialColor,
                  child: InkWell(
                    splashColor: materialInkWellColor,
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 5),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Text(nyscArialViewsSwipe,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: containerTextColor,
                              fontSize: 19,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    color: containerColor,
                    borderRadius: new BorderRadius.circular(5)
                ),
              ),
            ),
            Container(
              height: 340,
              child: Swiper(
                viewportFraction: 0.8,
                scale: 0.9,
                itemCount: federalArialNotifier.federalArialList.length,
                itemBuilder: (context, index) => Column(
                  children: <Widget>[
                    Container(
                      height: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                          image: DecorationImage(
                            image: CachedNetworkImageProvider(
                                federalArialNotifier.federalArialList[index].image
                            ),
                            fit: BoxFit.cover,
                          )
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
                          color: containerColor2
                      ),
                      child: ListTile(
                        title: Center(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Text(
                              federalArialNotifier.federalArialList[index].toastName,
                              style: TextStyle(
                                color: textColor.withAlpha(190),
                                fontWeight: FontWeight.w800,
                                fontSize: 17.0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 10, right: 20),
              child: Text(nyscAchievements,
                style: TextStyle(
                    fontSize: 20,
                    color: containerTextColor,
                    fontWeight: FontWeight.w500
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
              child: Container(
                child: Material (
                  color: materialColor,
                  child: InkWell(
                    splashColor: materialInkWellColor,
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 5),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Text(nyscAchievementsSwipe,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: containerTextColor,
                              fontSize: 19,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    color: containerColor,
                    borderRadius: new BorderRadius.circular(5)
                ),
              ),
            ),
            Container(
              height: 340,
              child: Swiper(
                viewportFraction: 0.8,
                scale: 0.9,
                itemCount: federalAchievementsNotifier.federalAchievementsList.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: <Widget>[
                      Container(
                        height: 250,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                            image: DecorationImage(
                              image: CachedNetworkImageProvider(
                                  federalAchievementsNotifier.federalAchievementsList[index].image
                              ),
                              fit: BoxFit.cover,
                              alignment: Alignment(0, -0.5)
                            )
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
                            color: containerColor2
                        ),
                        child: ListTile(
                          title: Center(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Text(
                                federalAchievementsNotifier.federalAchievementsList[index].toastName,
                                style: TextStyle(
                                  color: textColor.withAlpha(190),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17.0,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  );
                },
                itemWidth: 350,
                layout: SwiperLayout.STACK,
              ),

            ),
            Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 30, right: 20),
                child: RichText(
                  text: TextSpan(
                      text: moreInfoAboutNYSC,
                      style: TextStyle(
                        fontSize: 17,
                        color: containerTextColor,
                        fontWeight: FontWeight.w800,
                        fontStyle: FontStyle.italic,
                      ),
                      recognizer: TapGestureRecognizer()..onTap = () {
                        launch(moreInfoAboutNYSCURL);
                      }
                  ),
                )
            ),

          ],
        ),
      ),
    );
  }
}


class FederalNYSCCorpMemberPopulation{
  String x;
  double y;
  FederalNYSCCorpMemberPopulation(this.x,this.y);
}

dynamic getFederalNYSCCorpMemberPopulationData(){
  List<FederalNYSCCorpMemberPopulation> federalNYSCCorpMemberPopulationData = <FederalNYSCCorpMemberPopulation>[
    FederalNYSCCorpMemberPopulation('Male Corp Members', maleCorperPopulation),
    FederalNYSCCorpMemberPopulation('Female Corp Members', femaleCorperPopulation),
  ];
  return federalNYSCCorpMemberPopulationData;
}

class FederalNYSCPopulation{
  String x;
  double y;
  FederalNYSCPopulation(this.x,this.y);
}

dynamic getFederalNYSCPopulationData(){
  List<FederalNYSCPopulation> federalNYSCPopulationData = <FederalNYSCPopulation>[
    FederalNYSCPopulation('Male Corp Members', maleCorperPopulation),
    FederalNYSCPopulation('Female Corp Members', femaleCorperPopulation),
    FederalNYSCPopulation('NYSC Federal Staff', staffPopulation),
  ];
  return federalNYSCPopulationData;
}


bool toggle = false;
Map<String, double> federalNYSCMap = Map();

Map<String, double> federalNYSCCorpMemberMap = Map();

List<Color> federalNYSCColorList = [
  containerTextColor,
  secondFederalNYSCChartColor,
  thirdFederalNYSCChartColor,
];

List<Color> federalNYSCCorpMemberColorList = [
  secondFederalNYSCCorpMemberChartColor.withAlpha(160),
  secondFederalNYSCCorpMemberChartColor,
];

