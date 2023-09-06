import 'package:avrodi_sharif/utils/tools/file_importer.dart';

class CreationRoomPage extends StatelessWidget {
  const CreationRoomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AdaptiveTheme.of(context).theme.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            GlobalAppBar(AppBarType.withSettingsAndPop, title: "Ижодхона")
          ],
        ),
      ),
    );
  }
}
