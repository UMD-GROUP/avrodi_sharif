
import 'package:avrodi_sharif/ui/live_mentions/live_mentions.dart';
import 'package:avrodi_sharif/ui/quran_ayat/quran_ayat_page.dart';
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
  static const namesOfAllah = '/namesOfAllah';
  static const prayersInHadith = '/prayersInHadith';
  static const quranVerser = "/quranVerses";
  static const liveMentions = '/lifeMentions';
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
      case RouteName.namesOfAllah:
        return MaterialPageRoute(builder: (_) => const NamesOfAllahPage());
      case RouteName.prayersInHadith:
        return MaterialPageRoute(builder: (_) => const PrayersInHadithPage());
        case RouteName.quranVerser:
        return MaterialPageRoute(builder: (_) => const QuranVersePage());
      case RouteName.liveMentions:
        // return MaterialPageRoute(builder: (_) => const LifeMentions());
      case RouteName.zikr:
        {
          Map<String, dynamic> map = args as Map<String, dynamic>;

          return MaterialPageRoute(
            builder: (_) => ZikrPage(
              dailyModel: map["daily_zikr"] as List<DailyArabicRussianModel>,
              zikrInputModel: map["zikr_input"] as ZikrInputModel,
            ),
          );
        }
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
