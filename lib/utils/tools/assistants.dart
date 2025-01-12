import 'package:arabic_font/arabic_font.dart';
import 'package:avrodi_sharif/utils/tools/file_importer.dart';
import 'package:url_launcher/url_launcher.dart';

double height(context) => MediaQuery.of(context).size.height;
double width(context) => MediaQuery.of(context).size.width;

Future<void> launchMyUrl(String url) async {
  if (!await launchUrl(Uri.parse(url))) {
    throw Exception('Could not launch $url');
  }
}

TextStyle getArabicStyle(context, num size) {
  return ArabicTextStyle(
    arabicFont: ArabicFont.scheherazade,
    fontSize: size + 10,
    color: AdaptiveTheme.of(context).theme.hintColor,
  );
}
