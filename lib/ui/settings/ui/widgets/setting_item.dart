import 'package:avrodi_sharif/utils/tools/file_importer.dart';
import 'package:flutter/cupertino.dart';

class SettingItem extends StatefulWidget {
  SettingItemModel settings;
  SettingItem({required this.settings, super.key});

  @override
  State<SettingItem> createState() => _SettingItemState();
}

class _SettingItemState extends State<SettingItem> {
  bool isDark = false;
  @override
  Widget build(BuildContext context) {
    return OnTap(
      isAnimated: widget.settings.type != SettingItemType.switcher,
      onTap: widget.settings.type == SettingItemType.url
          ? () {
              launchMyUrl(widget.settings.url);
            }
          : () {
              Navigator.pushNamed(context, RouteName.setting,
                  arguments: widget.settings);
            },
      child: Container(
        decoration: BoxDecoration(
            color: AdaptiveTheme.of(context).theme.focusColor,
            borderRadius: BorderRadius.circular(10.h)),
        margin: EdgeInsets.only(top: 16.h),
        height: height(context) * 0.06,
        width: width(context),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset(widget.settings.icon),
                  SizedBox(width: 8.h),
                  Text(widget.settings.title,
                      style: AppTextStyles.labelLarge(context, fontSize: 16.h)),
                ],
              ),
              Visibility(
                  visible: widget.settings.type == SettingItemType.switcher,
                  child: CupertinoSwitch(
                    onChanged: (value) {
                      isDark = value;
                      setState(() {});
                    },
                    value: isDark,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
