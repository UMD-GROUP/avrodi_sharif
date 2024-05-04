import 'package:avrodi_sharif/utils/tools/file_importer.dart';

class LifeMentions extends StatelessWidget {
  const LifeMentions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              GlobalAppBar(AppBarType.withSettingsAndPop,
                  title: "Ҳаётбахш зикрлар"),
              SizedBox(
                  height: height(context) * 0.89,
                  width: double.infinity,
                  child: BlocBuilder<SettingsBloc, SettingsState>(
                    builder: (BuildContext context, state) {
                      return ListView(
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.w, vertical: 20.h),
                        children: [
                          Text(
                              textAlign: TextAlign.center,
                              style: AppTextStyles.labelLarge(
                                context,
                                fontSize: state.fontSize.toDouble(),
                              ),
                              """Қуръон (тафсир) ва суннатдан далиллари мустаҳкам бўлган, тарих синовларидан ўтган, муршиди комиллар томонидан тавсия этиб келинган ЗИКР ВАЗИФАЛАРИ"""),
                          Text(
                            lifeMentions,
                            style: AppTextStyles.labelLarge(
                              context,
                              fontSize: state.fontSize.toDouble(),
                            ),
                          ),
                        ],
                      );
                    },
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
