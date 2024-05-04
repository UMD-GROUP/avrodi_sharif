import 'package:avrodi_sharif/utils/tools/file_importer.dart';

class MenuItemModel {
  final String title;
  final String icon;
  final String routeName;

  MenuItemModel(
      {required this.title, required this.icon, required this.routeName});
}

List menuItems = [
  MenuItemModel(
      title: "Дуо фазилати",
      icon: AppIcons.pray,
      routeName: RouteName.virtueOfDua),
  MenuItemModel(
      title: "Ушбу Авроди шариф",
      icon: AppIcons.book,
      routeName: RouteName.about),
  MenuItemModel(
      title: "Ҳафта кунлари учун\nзикрлар",
      icon: AppIcons.calendar,
      routeName: RouteName.weeklyZikr),
  MenuItemModel(
      title: "Ҳар кунги зикрлар",
      icon: AppIcons.beads,
      routeName: RouteName.dailyZikr),
];
