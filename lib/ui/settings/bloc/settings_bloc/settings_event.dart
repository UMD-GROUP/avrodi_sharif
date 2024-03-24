part of 'settings_bloc.dart';

@immutable
abstract class SettingsEvent {}

class GetFontSizeEvent extends SettingsEvent {}

class SaveFontSizeEvent extends SettingsEvent {
  final int fontSize;
  SaveFontSizeEvent(this.fontSize);
}
