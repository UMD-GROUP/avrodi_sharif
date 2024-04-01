import 'package:avrodi_sharif/ui/creation_room/bloc/creation_room/creation_room_bloc.dart';
import 'package:avrodi_sharif/utils/tools/file_importer.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => SettingsBloc()..add(GetFontSizeEvent())),
        BlocProvider(
            create: (context) => CreationRoomBloc()..add(GetDataEvent()))
      ],
      child: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return AdaptiveTheme(
          builder: (light, dark) => const MaterialApp(
            initialRoute: RouteName.splash,
            onGenerateRoute: AppRoutes.generateRoute,
            debugShowCheckedModeBanner: false,
            // home: SearchInTextWidget(),
            // home: Material(child: EnterInfoPage()),
            title: 'Авроди Шариф',
          ),
          light: AppTheme.lightTheme(),
          initial: AdaptiveThemeMode.light,
          dark: AppTheme.darkTheme(),
        );
      },
    );
  }
}
