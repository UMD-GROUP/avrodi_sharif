import 'package:avrodi_sharif/utils/constants/app_icons.dart';
import 'package:avrodi_sharif/utils/constants/form_status.dart';

class SettingItemModel {
  final String title;
  final String icon;
  final String url;
  final SettingItemType type;

  SettingItemModel(
      {required this.type,
      required this.title,
      required this.icon,
      this.url = ''});
}

List settingItems = [
  SettingItemModel(
      type: SettingItemType.switcher,
      title: "Тунги режим",
      icon: AppIcons.darkMode),
  SettingItemModel(
      type: SettingItemType.route, title: "Шрифт", icon: AppIcons.font),
  // SettingItemModel(
  //     type: SettingItemType.route, title: "Хатчўп", icon: AppIcons.bookmark),
  SettingItemModel(
      type: SettingItemType.url,
      title: "Савол йўллаш",
      url: 'https://t.me/ahadjonovss',
      icon: AppIcons.askQuestion),
  SettingItemModel(
      type: SettingItemType.url,
      url: 'https://t.me/ahadjonovss',
      title: "Бизнинг бошқа дастурлар",
      icon: AppIcons.others),
];
