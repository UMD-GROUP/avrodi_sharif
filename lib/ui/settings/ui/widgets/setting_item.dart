import 'package:avrodi_sharif/utils/tools/file_importer.dart';
import 'package:flutter/cupertino.dart';

class SettingItem extends StatefulWidget {
  final SettingItemModel settings;

  const SettingItem({required this.settings, super.key});

  @override
  State<SettingItem> createState() => _SettingItemState();
}

class _SettingItemState extends State<SettingItem> {
  @override
  Widget build(BuildContext context) {
    return OnTap(
      isAnimated: widget.settings.type != SettingItemType.switcher,
      onTap: widget.settings.type == SettingItemType.url
          ? () {
              launchMyUrl(widget.settings.url);
            }
          : () {
              Navigator.pushNamed(
                context,
                RouteName.setting,
                arguments: widget.settings,
              );
            },
      child: Container(
        decoration: BoxDecoration(
          color: AdaptiveTheme.of(context).theme.focusColor,
          borderRadius: BorderRadius.circular(10.h),
        ),
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
                  SvgPicture.asset(
                    widget.settings.icon,
                    color: AdaptiveTheme.of(context).theme.hintColor,
                  ),
                  SizedBox(width: 8.h),
                  BlocBuilder<SettingsBloc, SettingsState>(
                    builder: (context, state) {
                      return Text(
                        widget.settings.title,
                        style: AppTextStyles.labelLarge(
                          context,
                          fontSize: state.fontSize < 20
                              ? state.fontSize.toDouble()
                              : 20,
                        ),
                      );
                    },
                  ),
                ],
              ),
              Visibility(
                visible: widget.settings.type == SettingItemType.switcher,
                child: CupertinoSwitch(
                  onChanged: (value) {
                    if (AdaptiveTheme.of(context).mode ==
                        AdaptiveThemeMode.dark) {
                      AdaptiveTheme.of(context)
                          .setThemeMode(AdaptiveThemeMode.light);
                    } else {
                      AdaptiveTheme.of(context)
                          .setThemeMode(AdaptiveThemeMode.dark);
                    }
                  },
                  value:
                      AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
