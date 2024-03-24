import 'package:avrodi_sharif/utils/tools/file_importer.dart';

class DailyZikrPage extends StatelessWidget {
  const DailyZikrPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AdaptiveTheme.of(context).theme.focusColor,
      body: SafeArea(
        child: Column(
          children: [
            GlobalAppBar(AppBarType.withSettingsAndPop,
                title: "Ҳар кунги зикрлар"),
            Padding(
              padding: EdgeInsets.all(20.h),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ZikrItem(
                          title: "Қуръон оятлари", icon: AppIcons.starBook),
                      ZikrItem(
                          title: "Хадисдаги дуолар", icon: AppIcons.starHands),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ZikrItem(
                        title: "Аллоҳнинг 99 исми",
                        icon: AppIcons.starWord,
                      ),
                      ZikrItem(
                          title: "Ҳаётбахш зикрлар", icon: AppIcons.starHands),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
