import 'package:avrodi_sharif/utils/tools/file_importer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final appDocumentDirectory = await getApplicationDocumentsDirectory();
  Hive.init(appDocumentDirectory.path);
  setup();
  Hive.openBox("settings_box");
  runApp(const App());
}
