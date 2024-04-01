import 'package:avrodi_sharif/utils/tools/file_importer.dart';

class DailyZikrBackground extends StatelessWidget {
  final String appBarTitle;
  final Widget child;

  const DailyZikrBackground(
      {super.key, required this.appBarTitle, required this.child});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        GlobalAppBar(AppBarType.withSettingsAndPop, title: appBarTitle),
        child,
      ],
    );
  }
}
