
import 'package:bloc/bloc.dart';
import '../thrown_pages/platoon_one_thrown_page.dart';
import '../thrown_pages/platoon_two_thrown_page.dart';
import '../thrown_pages/platoon_three_thrown_page.dart';
import '../thrown_pages/platoon_four_thrown_page.dart';
import '../thrown_pages/platoon_five_thrown_page.dart';
import '../thrown_pages/platoon_six_thrown_page.dart';
import '../thrown_pages/platoon_seven_thrown_page.dart';
import '../thrown_pages/platoon_eight_thrown_page.dart';
import '../thrown_pages/platoon_nine_thrown_page.dart';
import '../thrown_pages/platoon_ten_thrown_page.dart';
import '../thrown_pages/camp_corpers_coordinators_thrown_page.dart';
import '../thrown_pages/camp_officials_thrown_page.dart';

enum NavigationEvents {
  MyPlatoonOnePageClickedEvent,
  MyPlatoonTwoPageClickedEvent,
  MyPlatoonThreePageClickedEvent,
  MyPlatoonFourPageClickedEvent,
  MyPlatoonFivePageClickedEvent,
  MyPlatoonSixPageClickedEvent,
  MyPlatoonSevenPageClickedEvent,
  MyPlatoonEightPageClickedEvent,
  MyPlatoonNinePageClickedEvent,
  MyPlatoonTenPageClickedEvent,
  MyCampCorpersCoordinatorPageClickedEvent,
  MyCampOfficialsPageClickedEvent,
}


abstract class NavigationStates {}


class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {

  NavigationBloc() : super(MyPlatoonOnePage());

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents events) async* {
    switch (events) {
      case NavigationEvents.MyPlatoonOnePageClickedEvent:
        yield MyPlatoonOnePage();
        break;
      case NavigationEvents.MyPlatoonTwoPageClickedEvent:
        yield MyPlatoonTwoPage();
        break;
      case NavigationEvents.MyPlatoonThreePageClickedEvent:
        yield MyPlatoonThreePage();
        break;
      case NavigationEvents.MyPlatoonFourPageClickedEvent:
        yield MyPlatoonFourPage();
        break;
      case NavigationEvents.MyPlatoonFivePageClickedEvent:
        yield MyPlatoonFivePage();
        break;
      case NavigationEvents.MyPlatoonSixPageClickedEvent:
        yield MyPlatoonSixPage();
        break;
      case NavigationEvents.MyPlatoonSevenPageClickedEvent:
        yield MyPlatoonSevenPage();
        break;
      case NavigationEvents.MyPlatoonEightPageClickedEvent:
        yield MyPlatoonEightPage();
        break;
      case NavigationEvents.MyPlatoonNinePageClickedEvent:
        yield MyPlatoonNinePage();
        break;
      case NavigationEvents.MyPlatoonTenPageClickedEvent:
        yield MyPlatoonTenPage();
        break;
      case NavigationEvents.MyCampCorpersCoordinatorPageClickedEvent:
        yield MyCampCorpersCoordinatorsPage();
        break;
      case NavigationEvents.MyCampOfficialsPageClickedEvent:
        yield MyCampOfficialsPage();
        break;

    }
  }

}
