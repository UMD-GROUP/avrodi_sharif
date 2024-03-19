import 'package:avrodi_sharif/ui/settings/ui/sub_screens/setting_page.dart';
import 'package:avrodi_sharif/ui/zikr/data/models/zikr_input_model.dart';
import 'package:avrodi_sharif/ui/zikr/ui/zikr_page.dart';
import 'package:avrodi_sharif/utils/tools/file_importer.dart';

abstract class RouteName {
  static const splash = '/splash';
  static const home = '/home';
  static const settings = '/settings';
  static const creationRoom = '/creationRoom';
  static const about = '/about';
  static const virtueOfDua = '/virtueOfDua';
  static const weeklyZikr = '/weeklyZikr';
  static const dailyZikr = '/dailyZikr';
  static const setting = '/setting';
  static const zikr = '/zikr';
}

class AppRoutes {
  static Route generateRoute(RouteSettings settings) {
    var args = settings.arguments;
    switch (settings.name) {
      case RouteName.splash:
        return MaterialPageRoute(builder: (_) => const SplashPage());
      case RouteName.about:
        return MaterialPageRoute(builder: (_) => const AboutPage());
      case RouteName.dailyZikr:
        return MaterialPageRoute(builder: (_) => const DailyZikrPage());
      case RouteName.weeklyZikr:
        return MaterialPageRoute(builder: (_) => const WeeklyZikrPage());
      case RouteName.virtueOfDua:
        return MaterialPageRoute(builder: (_) => const VirtueOfDuaPage());
      case RouteName.home:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case RouteName.settings:
        return MaterialPageRoute(builder: (_) => const SettingsPage());
      case RouteName.creationRoom:
        return MaterialPageRoute(builder: (_) => const CreationRoomPage());
      case RouteName.zikr:
        return MaterialPageRoute(
          builder: (_) => ZikrPage(data: args as ZikrInputModel),
        );
      case RouteName.setting:
        return MaterialPageRoute(
          builder: (_) => SettingPage(
            setting: args as SettingItemModel,
          ),
        );

      default:
        return MaterialPageRoute(builder: (_) => const Scaffold());
    }
  }
}
