import 'package:avrodi_sharif/utils/tools/file_importer.dart';

part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc() : super(SettingsState(16)) {
    on<GetFontSizeEvent>(getFontSize);
    on<SaveFontSizeEvent>(saveFontSize);
  }

  getFontSize(event, emit) {
    emit(state.copyWith((getIt<SettingsRepository>().getFontSize()) ?? 16));
  }

  saveFontSize(event, emit) {
    getIt<SettingsRepository>().saveFontSize(event.fontSize);
    add(GetFontSizeEvent());
  }
}
