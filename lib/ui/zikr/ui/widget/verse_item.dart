import '../../../../utils/tools/file_importer.dart';

class VerseItem extends StatelessWidget {
  final DailyArabicRussianModel dailyModel;
  const VerseItem({super.key, required this.dailyModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade400),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Text(dailyModel.russian,textAlign: TextAlign.left,style: AppTextStyles.labelLarge(context,
            fontSize: 18.h,
            fontWeight: FontWeight.w400,
          ),),

          Text(dailyModel.arabic,textAlign: TextAlign.right,style: AppTextStyles.labelLarge(context,
            fontSize: 18.h,
            fontWeight: FontWeight.bold,
          ),),

        ],
      ),
    );
  }
}

