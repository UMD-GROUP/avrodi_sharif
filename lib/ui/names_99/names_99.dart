import 'package:avrodi_sharif/data/all_data/all_data.dart';
import 'package:avrodi_sharif/utils/tools/file_importer.dart';

import '../widgets/daily_zikr_background.dart';

class NamesOfAllahPage extends StatelessWidget {
  const NamesOfAllahPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AdaptiveTheme.of(context).theme.focusColor,
      body: SafeArea(
        child: DailyZikrBackground(
          appBarTitle: "Аллоҳнинг гўзал исмлари",
          child: BlocBuilder<SettingsBloc, SettingsState>(
              builder: (context, state) {
            return Padding(
              padding: EdgeInsets.all(15.sp),
              child: Column(
                children: [
                  Text(
                    namesOfAllah.arabic,
                    textAlign: TextAlign.right,
                    style: AppTextStyles.labelLarge(
                      context,
                      fontSize: state.fontSize.toDouble(),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    namesOfAllah.russian,
                    textAlign: TextAlign.left,
                    style: AppTextStyles.labelLarge(
                      context,
                      fontSize: state.fontSize.toDouble(),
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}

