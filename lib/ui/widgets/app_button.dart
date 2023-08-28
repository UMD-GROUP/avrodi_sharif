import 'package:avrodi_sharif/ui/widgets/on_tap.dart';
import 'package:avrodi_sharif/utils/tools/file_importer.dart';

class AppButton extends StatelessWidget {
  String icon;
  VoidCallback onTap;
  AppButton({required this.onTap, required this.icon, super.key});

  @override
  Widget build(BuildContext context) {
    return OnTap(
      onTap: onTap,
      child: SizedBox(
        height: 44.h,
        width: 44.h,
        child: DecoratedBox(
          decoration: BoxDecoration(
              color: AppColors.cF3F4F4,
              borderRadius: BorderRadius.all(Radius.circular(10.h))),
          child: Padding(
            padding: EdgeInsets.all(8.h),
            child: SvgPicture.asset(
              icon,
              height: 24.h,
              width: 24.h,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
