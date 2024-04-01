import 'package:avrodi_sharif/utils/constants/app_icons.dart';

class ZikrModel {
  final String title;
  final String subtitle;
  final String icon;

  ZikrModel({required this.title, required this.icon, required this.subtitle});
}

List<ZikrModel> zikrlar = [
  ZikrModel(
    title: "Душанба кунги вирд",
    icon: AppIcons.monday,
    subtitle: "Таваккул ва ҳифзу-ҳимоя оятлари",
  ),
  ZikrModel(
      title: "Сешанба кунги вирд",
      icon: AppIcons.tuesday,
      subtitle: "Саломат ва шифо оятлари"),
  ZikrModel(
      title: "Чоршанба кунги вирд",
      icon: AppIcons.wednesday,
      subtitle: "Таҳлил оятлари"),
  ZikrModel(
      title: "Пайшанба кунги вирд",
      icon: AppIcons.thursday,
      subtitle: "Дуо оятлари  "),
  ZikrModel(
      title: "Жума кунги вирдлар",
      icon: AppIcons.friday,
      subtitle: "Ҳамду сано оятлари"),
  ZikrModel(
      title: "Шанба кунги вирдлар",
      icon: AppIcons.saturday,
      subtitle: "Тавба-истиғфор оятлари"),
  ZikrModel(
      title: "Якшанба кунги вирд",
      icon: AppIcons.sunday,
      subtitle: "Тасбиҳ оятлари"),
];
