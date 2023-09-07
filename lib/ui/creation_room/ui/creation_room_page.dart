import 'package:avrodi_sharif/ui/creation_room/bloc/creation_room/creation_room_bloc.dart';
import 'package:avrodi_sharif/utils/tools/file_importer.dart';

class CreationRoomPage extends StatelessWidget {
  const CreationRoomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AdaptiveTheme.of(context).theme.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            GlobalAppBar(AppBarType.withSettingsAndPop, title: "Ижодхона"),
            BlocBuilder<CreationRoomBloc, CreationRoomState>(
              builder: (context, state) {
                if (state.status == ResponseStatus.inSuccess) {
                  List data = state.data.first;
                  return ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: data.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => Text(data[index],
                          style: AppTextStyles.labelLarge(context)));
                }
                return const CircularProgressIndicator();
              },
            )
          ],
        ),
      ),
    );
  }
}
