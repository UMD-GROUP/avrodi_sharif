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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ZikrItem(
                          onTap: () {
                            Navigator.pushNamed(context, RouteName.quranVerser);
                          },
                          title: "Қуръон оятлари",
                          icon: AppIcons.starBook),
                      ZikrItem(
                        onTap: () {
                          Navigator.pushNamed(
                              context, RouteName.prayersInHadith);
                        },
                        title: "Хадисдаги дуолар",
                        icon: AppIcons.starHands,
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  ZikrItem(
                    zikrWidth: MediaQuery.sizeOf(context).width,
                    onTap: () {
                      Navigator.pushNamed(context, RouteName.namesOfAllah);
                    },
                    title: "Аллоҳнинг 99 исми",
                    icon: AppIcons.starWord,
                  ),
                  SizedBox(height: 20.h),
                  ZikrItem(
                    zikrWidth: MediaQuery.sizeOf(context).width,
                    onTap: () {
                      Navigator.pushNamed(context, RouteName.liveMentions);
                    },
                    title: "Нақшбандия зикр вазифалари",
                    icon: AppIcons.starHands,
                    // onTap: () {
                    //   launchMyUrl(
                    //       'https://telegra.ph/NA%D2%9ASHBANDIYA-TARI%D2%9AATI-VAZIFASINI-BAZHARISH-ODOBI-05-12');
                    // }),
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
