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
      backgroundColor: AdaptiveTheme.of(context).theme.focusColor,
      body: SizedBox(
        height: height(context),
        width: width(context),
        child: Center(
          child: InteractiveViewer(
            boundaryMargin: const EdgeInsets.all(20),
            minScale: 0.1,
            maxScale: 3.0,
            child: Image.asset(
              'assets/images/logo.png',
              width: 200,
            ),
          ),
        ),
      ),
    );
  }
}
