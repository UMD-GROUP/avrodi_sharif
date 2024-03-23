import 'package:avrodi_sharif/ui/weekly_zikr/data/models/zikr_model.dart';
import 'package:avrodi_sharif/data/all_data/all_data.dart';
import 'package:avrodi_sharif/utils/tools/file_importer.dart';

class WeeklyZikrPage extends StatelessWidget {
  const WeeklyZikrPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AdaptiveTheme.of(context).theme.canvasColor,
      body: SafeArea(
        child: Column(
          children: [
            GlobalAppBar(AppBarType.withSettingsAndPop,
                title: "Ҳар кунги зикрлар"),
            Padding(
              padding: EdgeInsets.all(20.h),
              child: Column(
                children: [
                  GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 6,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 10.0,
                            crossAxisSpacing: 10.0,
                            childAspectRatio: 3 / 2.3,
                        ),
                    itemBuilder: (context, index) {

                      return ZikrItem(
                        dailyModel: dailyData[index],
                        title: zikrlar[index].title,
                        icon: zikrlar[index].icon,
                        subtitle: zikrlar[index].subtitle,
                      );
                    },
                  ),
                  SizedBox(height: 20.h),
                  ZikrItem(
                    dailyModel: dailyData[6],
                    title: zikrlar[6].title,
                    subtitle: zikrlar[6].subtitle,
                    icon: zikrlar[6].icon,
                    zikrWidth: width(context),

                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
