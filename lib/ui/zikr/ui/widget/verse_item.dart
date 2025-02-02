import '../../../../utils/tools/file_importer.dart';

class VerseItem extends StatelessWidget {
  final DailyArabicRussianModel dailyModel;
  const VerseItem({super.key, required this.dailyModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        // color: Colors.white,
        border: Border.all(color: Colors.grey.shade200),
        borderRadius: BorderRadius.circular(10),
      ),
      child: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          return Column(
            children: [
              Text(
                dailyModel.arabic,
                textAlign: TextAlign.center,
                style: getArabicStyle(context, state.fontSize),
              ),
              Text(
                dailyModel.russian,
                textAlign: TextAlign.left,
                style: AppTextStyles.labelLarge(
                  context,
                  fontSize: state.fontSize.toDouble(),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
