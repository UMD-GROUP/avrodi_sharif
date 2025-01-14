import 'package:avrodi_sharif/utils/tools/file_importer.dart';

class AppTextStyles {
  static TextStyle displayLarge(context,
          {Color? color, double? fontSize, FontWeight? fontWeight}) =>
      TextStyle(
          fontFamily: "Inter",
          fontWeight: fontWeight ?? FontWeight.w400,
          fontSize: fontSize ?? 57.sp,
          color: color ?? AdaptiveTheme.of(context).theme.hintColor);
  static TextStyle displayMedium(context,
          {Color? color, double? fontSize, FontWeight? fontWeight}) =>
      TextStyle(
          fontFamily: "Inter",
          fontWeight: fontWeight ?? FontWeight.w500,
          fontSize: fontSize ?? 45.sp,
          color: color ?? AdaptiveTheme.of(context).theme.hintColor);
  static TextStyle displaySmall(context,
          {Color? color, double? fontSize, FontWeight? fontWeight}) =>
      TextStyle(
          fontFamily: "Inter",
          fontWeight: fontWeight ?? FontWeight.w300,
          fontSize: fontSize ?? 36.sp,
          color: color ?? AdaptiveTheme.of(context).theme.hintColor);

  static TextStyle headlineLarge(context,
          {Color? color, double? fontSize, FontWeight? fontWeight}) =>
      TextStyle(
          fontFamily: "Inter",
          fontWeight: fontWeight ?? FontWeight.w400,
          fontSize: fontSize ?? 32.sp,
          color: color ?? AdaptiveTheme.of(context).theme.hintColor);
  static TextStyle headlineMedium(context,
          {Color? color, double? fontSize, FontWeight? fontWeight}) =>
      TextStyle(
          fontFamily: "Inter",
          fontWeight: fontWeight ?? FontWeight.w400,
          fontSize: fontSize ?? 22.sp,
          color: color ?? AdaptiveTheme.of(context).theme.hintColor);
  static TextStyle headlineSmall(context,
          {Color? color, double? fontSize, FontWeight? fontWeight}) =>
      TextStyle(
          fontFamily: "Inter",
          fontWeight: fontWeight ?? FontWeight.w300,
          fontSize: fontSize ?? 20.sp,
          color: color ?? AdaptiveTheme.of(context).theme.hintColor);

  static TextStyle titleLarge(context,
          {Color? color, double? fontSize, FontWeight? fontWeight}) =>
      TextStyle(
          fontFamily: "Inter",
          fontWeight: fontWeight ?? FontWeight.w400,
          fontSize: fontSize ?? 20.sp,
          color: color ?? AdaptiveTheme.of(context).theme.hintColor);
  static TextStyle titleMedium(context,
          {Color? color, double? fontSize, FontWeight? fontWeight}) =>
      TextStyle(
          fontFamily: "Inter",
          fontWeight: fontWeight ?? FontWeight.w500,
          fontSize: fontSize ?? 16.sp,
          color: color ?? AdaptiveTheme.of(context).theme.hintColor);
  static TextStyle titleSmall(context,
          {Color? color, double? fontSize, FontWeight? fontWeight}) =>
      TextStyle(
          fontFamily: "Inter",
          fontWeight: fontWeight ?? FontWeight.w400,
          fontSize: fontSize ?? 16.sp,
          color: color ?? AdaptiveTheme.of(context).theme.hintColor);

  static TextStyle labelSBold(context,
          {Color? color, double? fontSize, FontWeight? fontWeight}) =>
      TextStyle(
          fontFamily: "Inter",
          fontWeight: fontWeight ?? FontWeight.w600,
          fontSize: fontSize ?? fontSize,
          color: color ?? AdaptiveTheme.of(context).theme.hintColor);
  static TextStyle labelLarge(
    context, {
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
  }) =>
      TextStyle(
          fontFamily: "Inter",
          fontWeight: fontWeight ?? FontWeight.w500,
          fontSize: fontSize ?? 14.sp,
          color: color ?? AdaptiveTheme.of(context).theme.hintColor);
  static TextStyle labelMedium(context,
          {Color? color, double? fontSize, FontWeight? fontWeight}) =>
      TextStyle(
          fontFamily: "Inter",
          fontWeight: fontWeight ?? FontWeight.w500,
          fontSize: fontSize ?? 12.sp,
          color: color ?? AdaptiveTheme.of(context).theme.hintColor);
  static TextStyle labelSmall(context,
          {Color? color, double? fontSize, FontWeight? fontWeight}) =>
      TextStyle(
          fontFamily: "Inter",
          fontWeight: fontWeight ?? FontWeight.w400,
          fontSize: fontSize ?? 11.sp,
          color: color ?? AdaptiveTheme.of(context).theme.hintColor);

  static TextStyle bodyLarge(context,
          {Color? color, double? fontSize, FontWeight? fontWeight}) =>
      TextStyle(
          fontFamily: "Inter",
          fontWeight: fontWeight ?? FontWeight.w400,
          fontSize: fontSize ?? 20.sp,
          color: color ?? AdaptiveTheme.of(context).theme.hintColor);
  static TextStyle bodyLargeSmall(context,
          {Color? color, double? fontSize, FontWeight? fontWeight}) =>
      TextStyle(
          fontFamily: "Inter",
          fontWeight: fontWeight ?? FontWeight.w400,
          fontSize: fontSize ?? 16.sp,
          color: color ?? AdaptiveTheme.of(context).theme.hintColor);
  static TextStyle bodyMedium(context,
          {Color? color, double? fontSize, FontWeight? fontWeight}) =>
      TextStyle(
          fontFamily: "Inter",
          fontWeight: fontWeight ?? FontWeight.w500,
          fontSize: fontSize ?? 16.sp,
          color: color ?? AdaptiveTheme.of(context).theme.hintColor);
  static TextStyle bodySmall(context,
          {Color? color, double? fontSize, FontWeight? fontWeight}) =>
      TextStyle(
          fontFamily: "Inter",
          fontWeight: fontWeight ?? FontWeight.w400,
          fontSize: fontSize ?? 14.sp,
          color: color ?? AdaptiveTheme.of(context).theme.hintColor);
}
