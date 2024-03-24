import 'package:avrodi_sharif/utils/tools/file_importer.dart';

class QuranVersePage extends StatelessWidget {
  const QuranVersePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AdaptiveTheme.of(context).theme.focusColor,
      body: SafeArea(
        child: DailyZikrBackground(appBarTitle: 'Қуръон оятлари', child: SizedBox(
          height: 800.h,
          width: double.infinity,
          child: ListView.builder(
              itemCount:
                  quranVerses.length,
              itemBuilder: (context,index){
                return Container(
                  // height: ,
                  margin: EdgeInsets.all(10.sp),
                  padding: EdgeInsets.all(10.sp),
                  decoration: BoxDecoration(
                      color: AdaptiveTheme.of(context).theme.backgroundColor,
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(color: Colors.grey.shade200)
                  ),
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
                );
              }
          ),
        ),),
      ),
    );
  }
}
