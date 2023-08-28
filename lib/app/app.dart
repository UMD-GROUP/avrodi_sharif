import 'package:avrodi_sharif/utils/tools/file_importer.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MyApp();
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
          builder: (light, dark) => const GetMaterialApp(
            initialRoute: RouteName.splash,
            onGenerateRoute: AppRoutes.generateRoute,
            debugShowCheckedModeBanner: false,
            // home: Material(child: EnterInfoPage()),
            title: 'Bookmeri',
          ),
          light: AppTheme.light,
          initial: AdaptiveThemeMode.light,
          dark: AppTheme.dark,
        );
      },
    );
  }
}
