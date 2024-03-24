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
              child: BlocBuilder<SettingsBloc,SettingsState>(builder: (BuildContext context, state) {
                return ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount:  poemsForCreationRoom.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Padding(
                    padding:  EdgeInsets.all(15.sp),
                    child: Column(
                      children: [
                        Text(poemsForCreationRoom[index].title!,
                          textAlign: TextAlign.center,
                          style: AppTextStyles.labelLarge(context,fontWeight: FontWeight.bold,fontSize: state.fontSize.toDouble()),
                        ),
                        SizedBox(height: 10.h),
                        Text(poemsForCreationRoom[index].poem,
                          textAlign: TextAlign.center,
                          style: AppTextStyles.labelLarge(context,fontSize: state.fontSize.toDouble()),
                        ),
                      ],
                    ),
                  ),
                );
              },)
            )
          ],
        ),
      ),
    );
  }
}
