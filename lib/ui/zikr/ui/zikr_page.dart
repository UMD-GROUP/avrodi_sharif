import 'package:avrodi_sharif/ui/zikr/ui/widget/verse_item.dart';
import 'package:avrodi_sharif/utils/tools/file_importer.dart';

class ZikrPage extends StatelessWidget {
  final ZikrInputModel zikrInputModel;
  final List<DailyArabicRussianModel> dailyModel;

  const ZikrPage({
    super.key,
    required this.dailyModel,
    required this.zikrInputModel,
  });

  @override
  Widget build(BuildContext context) {
    // int fontSize = StorageService().getInt(boxName, key)
    // print(fontSize);
    return Scaffold(
      backgroundColor: AdaptiveTheme.of(context).theme.focusColor,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 12.h),
              decoration: BoxDecoration(
                  color: AdaptiveTheme.of(context).theme.focusColor),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // SizedBox(width: 6.h),
                  Visibility(
                    visible: true,
                    child: AppButton(
                      icon: AppIcons.backIcon,
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),

                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(children: [
                      TextSpan(
                          text: "${zikrInputModel.title}\n",
                          style: AppTextStyles.labelLarge(context,
                              fontWeight: FontWeight.w500, fontSize: 20.h)),
                      TextSpan(
                        text: zikrInputModel.subtitle,
                        style: AppTextStyles.labelLarge(
                          context,
                          fontSize: 16.h,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ]),
                  ),
                  Visibility(
                    visible: true,
                    child: AppButton(
                      icon: AppIcons.settings,
                      onTap: () {
                        Navigator.pushNamed(context, RouteName.settings);
                      },
                    ),
                  ),
                  // SizedBox(width: 6.h),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Expanded(child: BlocBuilder<SettingsBloc, SettingsState>(
                builder: (context, state) {
              return ListView(
                children: [
                  Text(
                    """
أَعُوْذُ بِاللّٰهِ مِنَ الشَّيْطٰانِ الرَّجِيْمِ
Тошбўрон қилинган ва Даргоҳдан қувилган шайтоннинг ёмонлигидан Аллоҳга сиғинаман.
بِسْمِ اللهِ الرَّحْمٰنِ الرَّحِيْمِ
Раҳмон ва Раҳийм (беҳад меҳрибон ва бениҳоят раҳмли) Аллоҳ номи билан.
اِنَّا لِلّٰهِ وَاِنَّٓا اِلَيْهِ رَاجِعُونَ 
Шубҳасиз, биз (ҳамма нарсамиз билан) Аллоҳникимиз ва (охири) яна Унга қайтурмиз.
                  """,
                    textAlign: TextAlign.center,
                    style: AppTextStyles.labelLarge(
                      context,
                      fontSize: state.fontSize.toDouble(),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  ...List.generate(dailyModel.length, (index) {
                    return VerseItem(dailyModel: dailyModel[index]);
                  }),
                ],
              );
            })),
          ],
        ),
      ),
    );
  }
}
