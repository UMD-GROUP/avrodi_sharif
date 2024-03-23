import 'package:avrodi_sharif/ui/weekly_zikr/data/models/zikr_model.dart';
import 'package:avrodi_sharif/ui/zikr/data/models/daily_zikr_arab_krill_model.dart';
import 'package:avrodi_sharif/ui/zikr/data/models/zikr_input_model.dart';
import 'package:avrodi_sharif/utils/tools/file_importer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ZikrPage extends StatelessWidget {
  final ZikrInputModel zikrInputModel;
  final List<DailyArabicRussianModel> dailyModel;

  const ZikrPage({super.key, required this.dailyModel, required this.zikrInputModel,});

  @override
  Widget build(BuildContext context) {
    // int fontSize = StorageService().getInt(boxName, key)
    // print(fontSize);
    return Scaffold(
      backgroundColor: AdaptiveTheme.of(context).theme.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
        Container(
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 12.h),
        decoration:
        BoxDecoration(color: AdaptiveTheme.of(context).theme.focusColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             // SizedBox(width: 6.h),
            Visibility(
              visible: true,
              child: AppButton(
                icon: AppIcons.backIcon,
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),

            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
              children: [
                TextSpan(
                  text: "${zikrInputModel.title}\n",
                  style:  AppTextStyles.labelLarge(context,
                fontWeight: FontWeight.w500, fontSize: 20.h)),
                TextSpan(
                    text: zikrInputModel.subtitle,
                    style:  AppTextStyles.labelLarge(context,
                         fontSize: 16.h,
                      fontWeight: FontWeight.w400,
                    ),
                ),

              ]
            ),),
            Visibility(
              visible: true,
              child: AppButton(
                icon: AppIcons.settings,
                onTap: () {
                  Navigator.pushNamed(context, RouteName.settings);
                },
              ),
            ),
            // SizedBox(width: 6.h),
          ],
        ),
      ),
            SizedBox(height: 20.h),

            Expanded(
              child: ListView.builder(
                  itemCount: dailyModel.length,
                  itemBuilder: (context,index){
                return  Column(
                  children: [
                    Text(dailyModel[index].arabic,textAlign: TextAlign.right,),
                    Text(dailyModel[index].russian,textAlign: TextAlign.left,),
                  ],
                );
              }
              )
            ),
          ],
        ),
      ),
    );
  }
}
