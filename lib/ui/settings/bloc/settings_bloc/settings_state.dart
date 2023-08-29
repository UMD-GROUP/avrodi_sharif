part of 'settings_bloc.dart';

@immutable
class SettingsState extends Equatable {
  int fontSize;

  SettingsState(this.fontSize);

  copyWith(int? fontSize) {
    return SettingsState(fontSize ?? this.fontSize);
  }

  @override
  List<Object?> get props => [fontSize];
}
