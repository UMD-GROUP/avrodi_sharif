// import 'package:avrodi_sharif/firebase_options.dart';
import 'package:avrodi_sharif/utils/tools/file_importer.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  final appDocumentDirectory = await getApplicationDocumentsDirectory();
  Hive.init(appDocumentDirectory.path);
  setup();
  Hive.openBox("settings_box");
  runApp(const App());
}
