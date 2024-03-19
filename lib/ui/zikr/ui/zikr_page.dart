import 'package:avrodi_sharif/ui/zikr/data/models/zikr_input_model.dart';
import 'package:avrodi_sharif/utils/tools/file_importer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ZikrPage extends StatelessWidget {
  final ZikrInputModel data;

  const ZikrPage(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    // int fontSize = StorageService().getInt(boxName, key)
    // print(fontSize);
    return Scaffold(
      backgroundColor: AdaptiveTheme.of(context).theme.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            GlobalAppBar(AppBarType.withSettingsAndPop,
                title: data.title),
            SizedBox(height: 20.h),
            Text(
              data.subtitle,
              style: TextStyle(
                // fontSize: SettingsRepository().getFontSize()!.toDouble(),
                fontWeight: FontWeight.bold,
              ),
            ),
            // Expanded(
            //   child: ListView(
            //     children: [
            //       Padding(
            //         padding: const EdgeInsets.all(10.0),
            //         child: Text(
            //           textAlign: TextAlign.center,
            //           data.title,
            //           style: AppTextStyles.titleMedium(context)
            //               .copyWith(fontWeight: FontWeight.bold),
            //         ),
            //       ),
            //       Padding(
            //         padding: const EdgeInsets.all(10.0),
            //         child: Text(
            //           textAlign: TextAlign.right,
            //           data.body,
            //           style: AppTextStyles.titleMedium(context)
            //               .copyWith(fontWeight: FontWeight.bold),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
