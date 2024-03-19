import 'package:avrodi_sharif/utils/tools/file_importer.dart';

class VirtueOfDuaPage extends StatelessWidget {
  const VirtueOfDuaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AdaptiveTheme.of(context).theme.backgroundColor,
      body: SafeArea(
        child: SizedBox(
          height: height(context),
          width: width(context),
          child: Column(
            children: [
              GlobalAppBar(
                AppBarType.withSettingsAndPop,
                title: "Дуо фазилати",
              ),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.h),
                        child: SingleChildScrollView(
                          child: Text(
                             "",
                              style: AppTextStyles.labelLarge(context)),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
