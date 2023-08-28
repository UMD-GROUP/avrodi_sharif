import 'package:avrodi_sharif/utils/tools/file_importer.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class OnTap extends StatelessWidget {
  Widget child;
  VoidCallback onTap;
  bool isAnimated;
  OnTap(
      {required this.onTap,
      required this.child,
      this.isAnimated = true,
      super.key});

  @override
  Widget build(BuildContext context) {
    return isAnimated ? ZoomTapAnimation(onTap: onTap, child: child) : child;
  }
}
