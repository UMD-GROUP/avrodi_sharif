import 'package:avrodi_sharif/utils/tools/file_importer.dart';

class SettingsRepository {
  static String boxName = "settings_box";
  saveFontSize(int fontSize) =>
      getIt<StorageService>().saveInt(boxName, "fontSize", fontSize);

  int? getFontSize() => getIt<StorageService>().getInt(boxName, "fontSize");
}
