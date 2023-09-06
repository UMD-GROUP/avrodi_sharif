import 'package:avrodi_sharif/utils/tools/file_importer.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AdaptiveTheme.of(context).theme.backgroundColor,
      body: SafeArea(
        child: SizedBox(
          height: height(context),
          width: width(context),
          child: Column(
            children: [
              GlobalAppBar(
                AppBarType.withoutSettings,
                title: "Созламалар",
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Column(
                  children: [
                    ListView.builder(
                        shrinkWrap: true,
                        itemCount: 5,
                        itemBuilder: (context, index) =>
                            SettingItem(settings: settingItems[index]))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
