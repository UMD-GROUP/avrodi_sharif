import 'package:avrodi_sharif/utils/tools/file_importer.dart';

class GlobalAppBar extends StatelessWidget {
  AppBarType type;
  String title;
  GlobalAppBar(this.type, {required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 12.h,
      ),
      decoration: BoxDecoration(
        color: AdaptiveTheme.of(context).theme.focusColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (type == AppBarType.withSettings) SizedBox(width: 6.h),
          Visibility(
            visible: type != AppBarType.withSettings,
            child: AppButton(
              icon: AppIcons.backIcon,
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: AppTextStyles.labelLarge(
                context,
                fontWeight: FontWeight.w500,
                fontSize: 20.h,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(width: 8),
          Visibility(
            visible: type != AppBarType.withoutSettingsAndPop &&
                type != AppBarType.withoutSettings,
            child: AppButton(
              icon: AppIcons.settings,
              onTap: () {
                Navigator.pushNamed(context, RouteName.settings);
              },
            ),
          ),
          if (type == AppBarType.withoutSettings) SizedBox(width: 6.h),
        ],
      ),
    );
  }
}
