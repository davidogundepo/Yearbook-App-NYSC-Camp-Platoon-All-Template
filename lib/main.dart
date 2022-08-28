import 'dart:async';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './notifier/camp_corpers_coordinators_notifier.dart';
import './notifier/platoon_eight_notifier.dart';
import './notifier/platoon_five_notifier.dart';
import './notifier/platoon_four_notifier.dart';
import './notifier/platoon_nine_notifier.dart';
import './notifier/platoon_one_notifier.dart';
import './notifier/platoon_seven_notifier.dart';
import './notifier/platoon_six_notifier.dart';
import './notifier/platoon_three_notifier.dart';
import 'notifier/platoon_two_notifier.dart';
import './sidebar/sidebar_layout.dart';
import 'package:provider/provider.dart';
import 'notifier/camp_images_notifier.dart';
import 'notifier/camp_officials_notifier.dart';
import 'notifier/federal_achievement_images_notifier.dart';
import 'notifier/federal_arial_notifier.dart';
import 'notifier/platoon_ten_notifier.dart';
import 'notifier/sidebar_notifier.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
  runZonedGuarded(() {
    runApp(MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => PlatoonOneNotifier(),
          ),
          ChangeNotifierProvider(
            create: (context) => PlatoonTwoNotifier(),
          ),
          ChangeNotifierProvider(
            create: (context) => PlatoonThreeNotifier(),
          ),
          ChangeNotifierProvider(
            create: (context) => PlatoonFourNotifier(),
          ),
          ChangeNotifierProvider(
            create: (context) => PlatoonFiveNotifier(),
          ),
          ChangeNotifierProvider(
            create: (context) => PlatoonSixNotifier(),
          ),
          ChangeNotifierProvider(
            create: (context) => PlatoonSevenNotifier(),
          ),
          ChangeNotifierProvider(
            create: (context) => PlatoonEightNotifier(),
          ),
          ChangeNotifierProvider(
            create: (context) => PlatoonNineNotifier(),
          ),
          ChangeNotifierProvider(
            create: (context) => PlatoonTenNotifier(),
          ),
          ChangeNotifierProvider(
            create: (context) => CampCorpersCoordinatorsNotifier(),
          ),
          ChangeNotifierProvider(
            create: (context) => CampOfficialsNotifier(),
          ),
          ChangeNotifierProvider(
            create: (context) => CampArialNotifier(),
          ),
          ChangeNotifierProvider(
            create: (context) => FederalAchievementsNotifier(),
          ),
          ChangeNotifierProvider(
            create: (context) => FederalArialNotifier(),
          ),
          ChangeNotifierProvider(
            create: (context) => SideBarNotifier(),
          ),

        ],
        child: MyApp(),
      ));
    }, FirebaseCrashlytics.instance.recordError
  );
}

class MyApp extends StatefulWidget {


  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
    Firebase.initializeApp().whenComplete(() {
      print("completed");
      setState(() {});
    });
  }


  @override
  Widget build(BuildContext context) {

    FirebaseAnalytics analytics = FirebaseAnalytics.instance;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: SideBarLayout(),
      navigatorObservers: [
        FirebaseAnalyticsObserver(analytics: analytics),
      ],
    );
  }
}
