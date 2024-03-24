import 'package:avrodi_sharif/utils/tools/file_importer.dart';

class SettingPage extends StatelessWidget {
  final SettingItemModel setting;

  const SettingPage({required this.setting, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AdaptiveTheme.of(context).theme.focusColor,
      body: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          return SafeArea(
            child: Column(
              children: [
                GlobalAppBar(AppBarType.withoutSettingsAndPop,
                    title: setting.title),
                SizedBox(
                  width: width(context),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.h),
                    child: setting.icon == AppIcons.font
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10.h),
                              Text(
                                "Ёзув катталиги:",
                                style: AppTextStyles.labelLarge(
                                  context,
                                  fontSize: state.fontSize.toDouble(),
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Slider(
                                max: 20,
                                min: 12,
                                activeColor: AppColors.c014E46,
                                inactiveColor: Colors.grey,
                                thumbColor: Colors.white,
                                value: state.fontSize.toDouble(),
                                onChanged: (value) {
                                  context.read<SettingsBloc>().add(
                                        SaveFontSizeEvent(
                                          value.toInt(),
                                        ),
                                      );
                                },
                              ),
                              SizedBox(height: 10.h),
                              DecoratedBox(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.h),
                                  color: AdaptiveTheme.of(context)
                                      .theme
                                      .focusColor,
                                ),
                                child: SizedBox(
                                  child: Padding(
                                    padding: EdgeInsets.all(12.h),
                                    child: Text(
                                      """Aa Bb Cc Dd Ee Ff Gg Hh Ii Jj Kk Ll Mm Nn Oo Pp Qq Rr Ss Tt Uu Vv Ww Xx Yy Zz""",
                                      style: AppTextStyles.labelLarge(
                                        context,
                                        fontSize: state.fontSize.toDouble(),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        : Column(
                            children: [
                              ...List.generate(
                                5,
                                (index) => const BookMarkItem(),
                              )
                            ],
                          ),
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
