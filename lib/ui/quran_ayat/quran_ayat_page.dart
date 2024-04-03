import 'package:avrodi_sharif/utils/tools/file_importer.dart';

class QuranVersePage extends StatelessWidget {
  const QuranVersePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AdaptiveTheme.of(context).theme.focusColor,
      body: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          return SafeArea(
            child: Column(
              children: [
                GlobalAppBar(AppBarType.withSettingsAndPop,
                    title: 'Қуръон оятлари'),
                Expanded(
                  child: ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text(
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
                      ),
                      ...List.generate(
                          quranVerses.length,
                          (index) => Container(
                                // height: ,
                                margin: EdgeInsets.all(10.sp),
                                padding: EdgeInsets.all(10.sp),
                                decoration: BoxDecoration(
                                    color: AdaptiveTheme.of(context)
                                        .theme
                                        .backgroundColor,
                                    borderRadius: BorderRadius.circular(10.r),
                                    border: Border.all(
                                        color: Colors.grey.shade200)),
                                child: BlocBuilder<SettingsBloc, SettingsState>(
                                    builder: (context, state) {
                                  return Column(
                                    children: [
                                      Text(
                                        quranVerses[index].arabic,
                                        textAlign: TextAlign.right,
                                        style: AppTextStyles.labelLarge(
                                          context,
                                          fontSize: state.fontSize.toDouble(),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      // SizedBox(height: 10.h),
                                      Text(
                                        quranVerses[index].russian,
                                        textAlign: TextAlign.left,
                                        style: AppTextStyles.labelLarge(
                                          context,
                                          fontSize: state.fontSize.toDouble(),
                                          // fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  );
                                }),
                              ))
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
