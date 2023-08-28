import 'package:avrodi_sharif/utils/tools/file_importer.dart';

class QuoteItem extends StatelessWidget {
  String quote;
  QuoteItem({required this.quote, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height(context) * 0.25,
        width: width(context),
        alignment: Alignment.center,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppImages.quoteBackground),
                fit: BoxFit.fitWidth)),
        child: Text(
          quote,
          style: AppTextStyles.labelLarge(context,
              fontSize: 16.h, fontWeight: FontWeight.w400),
        ));
  }
}
