import 'package:avrodi_sharif/utils/tools/file_importer.dart';

class SettingPage extends StatelessWidget {
  SettingItemModel setting;
  SettingPage({required this.setting, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AdaptiveTheme.of(context).theme.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            GlobalAppBar(AppBarType.withSettingsAndPop, title: setting.title)
          ],
        ),
      ),
    );
  }
}
