import 'package:avrodi_sharif/utils/tools/file_importer.dart';

class SmButton extends StatelessWidget {
  String icon;
  String url;
  SmButton({required this.icon, required this.url, super.key});

  @override
  Widget build(BuildContext context) {
    return OnTap(
        onTap: () {
          launchMyUrl(url);
        },
        child: SvgPicture.asset(
          icon,
        ));
  }
}
