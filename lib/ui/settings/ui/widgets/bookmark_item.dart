import 'package:avrodi_sharif/utils/tools/file_importer.dart';

class BookMarkItem extends StatelessWidget {
  const BookMarkItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height(context) * 0.06,
      width: width(context),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade300, spreadRadius: 0.3, blurRadius: 3)
          ],
          color: AdaptiveTheme.of(context).theme.canvasColor,
          borderRadius: BorderRadius.circular(10.h)),
      padding: EdgeInsets.symmetric(horizontal: 12.h),
      margin: EdgeInsets.only(top: 16.h),
      child: Row(
        children: [
          SvgPicture.asset(AppIcons.bookmark,
              color: AdaptiveTheme.of(context).theme.hintColor),
          SizedBox(width: 8.h),
          BlocBuilder<SettingsBloc, SettingsState>(
            builder: (context, state) {
              return Text("Hashr sur’asi 23-oyat",
                  style: AppTextStyles.labelLarge(context,
                      fontSize: state.fontSize.toDouble()));
            },
          ),
        ],
      ),
    );
  }
}
