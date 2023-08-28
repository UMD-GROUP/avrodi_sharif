import 'package:avrodi_sharif/ui/settings/data/models/setting_item_model.dart';
import 'package:avrodi_sharif/ui/settings/ui/widgets/setting_item.dart';
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
                AppBarType.withSettingsAndPop,
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
