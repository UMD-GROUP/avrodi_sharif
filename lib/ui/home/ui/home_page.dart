import 'package:avrodi_sharif/ui/home/ui/layouts/ipad_home.dart';
import 'package:avrodi_sharif/ui/home/ui/layouts/mobile_home.dart';
import 'package:avrodi_sharif/utils/tools/file_importer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    bool isIpad = height(context) > 900;

    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxHeight > 1000) {
          return IpadHome();
        }
        return MobileHome();
      },
    );
  }
}
