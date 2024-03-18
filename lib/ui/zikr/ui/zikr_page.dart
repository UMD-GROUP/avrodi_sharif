import 'package:avrodi_sharif/ui/zikr/data/models/zikr_input_model.dart';
import 'package:avrodi_sharif/utils/tools/file_importer.dart';

class ZikrPage extends StatelessWidget {
  ZikrInputModel data;
  ZikrPage({required this.data, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AdaptiveTheme.of(context).theme.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            GlobalAppBar(AppBarType.withSettingsAndPop, title: data.title),
            Text(
                "اِذْ هَمَّتْ طَٓائِفَتَانِ مِنْكُمْ اَنْ تَفْشَلَاۙ وَاللّٰهُ وَلِيُّهُمَاۜ وَعَلَى اللّٰهِ فَلْيَتَوَكَّلِ الْمُؤْمِنُونَ   ۝   وَلَقَدْ نَصَرَكُمُ اللّٰهُ بِبَدْرٍ وَاَنْتُمْ اَذِلَّةٌۚ فَاتَّقُوا اللّٰهَ لَعَلَّكُمْ تَشْكُرُونَ   ۝")
          ],
        ),
      ),
    );
  }
}
