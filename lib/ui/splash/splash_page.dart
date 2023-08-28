import 'package:avrodi_sharif/utils/tools/file_importer.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    toHome();
    super.initState();
  }

  toHome() {
    Future.delayed(const Duration(seconds: 3)).then((value) =>
        Navigator.pushNamedAndRemoveUntil(
            context, RouteName.home, (route) => false));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: height(context),
        width: width(context),
        child: const Center(
          child: Text("Splash page"),
        ),
      ),
    );
  }
}
