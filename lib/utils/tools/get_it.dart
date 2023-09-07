import 'package:avrodi_sharif/utils/tools/file_importer.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerLazySingleton(() => StorageService());
  getIt.registerLazySingleton(() => SettingsRepository());
  getIt.registerLazySingleton(
      () => CreationRoomRepository(FirebaseFirestore.instance));
}
