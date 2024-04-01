import 'package:avrodi_sharif/utils/tools/file_importer.dart';

// class AppTheme {
//   static ThemeData light = ThemeData(
//     fontFamily: "Inter",
//     focusColor: Colors.white,
//     canvasColor: const Color.fromRGBO(247, 247, 247, 1),
//     hintColor: Colors.black,
//   );
//   static ThemeData dark = ThemeData(
//     fontFamily: "Inter",
//     focusColor: Colors.black,
//     hintColor: Colors.white,
//     canvasColor: Colors.black,
//   );
// }

abstract class AppTheme {
  static ThemeData lightTheme() => ThemeData(
        focusColor: Colors.white,
        canvasColor: const Color.fromRGBO(247, 247, 247, 1),
        hintColor: Colors.black,
        // textTheme: ThemeTextStyles.lightTextTheme,
        brightness: Brightness.light,
        colorSchemeSeed: Colors.blue,
        dividerColor: Colors.black,
        cardColor: Colors.white,
        scaffoldBackgroundColor: const Color(0xffF2F1F7),
        appBarTheme: AppBarTheme(
            iconTheme: const IconThemeData(color: Color(0xFF007AFF)),
            backgroundColor: const Color(0xFFFFFFFF).withOpacity(0.94)),
      );
  static ThemeData darkTheme() => ThemeData(
        focusColor: Colors.black,
        hintColor: Colors.white,
        canvasColor: Colors.black,
        brightness: Brightness.dark,
        dividerColor: const Color(0xFF6E716F),
        cardColor: const Color(0xFF1C2D41),
        scaffoldBackgroundColor: const Color(0xff142535),
        appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(color: Color(0xFF007AFF)),
            backgroundColor: Color(0xFF1C2D41)),
      );
}
