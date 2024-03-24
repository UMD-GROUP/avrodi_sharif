import 'package:avrodi_sharif/data/all_data/all_data.dart';
import 'package:avrodi_sharif/utils/tools/file_importer.dart';

class CreationRoomPage extends StatelessWidget {
  const CreationRoomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AdaptiveTheme.of(context).theme.focusColor,
      body: SafeArea(
        child: Column(
          children: [
            GlobalAppBar(AppBarType.withSettingsAndPop, title: "Ижодхона"),
            Expanded(
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: poems.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Text(poems[index].poem,
                      textAlign: TextAlign.center,
                      style: AppTextStyles.labelLarge(context))),
            )
          ],
        ),
      ),
    );
  }
}
