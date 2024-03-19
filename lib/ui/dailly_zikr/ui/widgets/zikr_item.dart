import 'package:avrodi_sharif/ui/zikr/data/models/zikr_input_model.dart';
import 'package:avrodi_sharif/utils/tools/file_importer.dart';

class ZikrItem extends StatelessWidget {
  final String title;
  final String icon;
  final double? zikrWidth;
  final String? subtitle;

  const ZikrItem({
    this.zikrWidth,
    required this.title,
    required this.icon,
    super.key,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return OnTap(
      onTap: () {
        Navigator.pushNamed(
          context,
          RouteName.zikr,
          arguments: ZikrInputModel(title: title, subtitle: subtitle!),
        );
      },
      child: SizedBox(
        height: height(context) * 0.13,
        width: zikrWidth ?? height(context) * 0.19,
        child: DecoratedBox(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade300, spreadRadius: 1, blurRadius: 15)
            ],
            color: AdaptiveTheme.of(context).theme.backgroundColor,
            borderRadius: BorderRadius.circular(10.h),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(icon),
              Text(title, style: AppTextStyles.labelLarge(context))
            ],
          ),
        ),
      ),
    );
  }
}
