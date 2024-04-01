import 'package:avrodi_sharif/data/all_data/all_data.dart';
import 'package:avrodi_sharif/utils/tools/file_importer.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AdaptiveTheme.of(context).theme.canvasColor,
      body: SafeArea(
        child: SizedBox(
          height: height(context),
          width: width(context),
          child: Column(
            children: [
              GlobalAppBar(
                AppBarType.withSettingsAndPop,
                title: "Ушбу Авроди шариф",
              ),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.h),
                      child: BlocBuilder<SettingsBloc,SettingsState>(builder: (context,state){
                        return SingleChildScrollView(
                          child: Text(
                            aboutAvrod,
                            style: AppTextStyles.labelLarge(context,fontSize: state.fontSize.toDouble()),
                          ),
                        );
                      })
                    ),
                    SizedBox(height: 30.h),
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
