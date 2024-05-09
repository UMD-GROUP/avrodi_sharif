import 'dart:math';

import 'package:avrodi_sharif/utils/tools/file_importer.dart';

class MobileHome extends StatefulWidget {
  const MobileHome({super.key});

  @override
  State<MobileHome> createState() => _MobileHomeState();
}

class _MobileHomeState extends State<MobileHome> {
  int poemIndex = 0;
  @override
  void initState() {
    _random();
    super.initState();
  }

  void _random() {
    poemIndex = Random().nextInt(18);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AdaptiveTheme.of(context).theme.focusColor,
      body: SafeArea(
        child: SizedBox(
          height: height(context),
          width: width(context),
          child: Column(
            children: [
              GlobalAppBar(AppBarType.withSettings, title: "Авроди Шариф"),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: Column(
                    children: [
                      // Text("poems[poemIndex].poem"),
                      QuoteItem(quote: poems[poemIndex].poem),
                      const Spacer(),
                      OnTap(
                        onTap: () {
                          Navigator.pushNamed(context, RouteName.creationRoom);
                        },
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                              color: AppColors.cFECCA98,
                              borderRadius: BorderRadius.circular(6.h)),
                          child: SizedBox(
                            height: height(context) * 0.06,
                            width: width(context),
                            child: Center(
                              child: BlocBuilder<SettingsBloc, SettingsState>(
                                builder: (context, state) {
                                  return Text(
                                    "Ижодхона",
                                    style: AppTextStyles.labelLarge(
                                      context,
                                      fontSize: state.fontSize.toDouble(),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Spacer(),
                      const Spacer(),
                      SizedBox(
                          height: height(context) * 0.38,
                          width: width(context),
                          child: GridView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: 4,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisSpacing: 10.0,
                                crossAxisSpacing: 10.0,
                                childAspectRatio: 3 / 2.4,
                              ),
                              itemBuilder: (context, index) {
                                return MenuButton(data: menuItems[index]);
                              })),

                      const Spacer(),
                      SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Spacer(),
                            SizedBox(
                              width: width(context) * 0.7,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  SmButton(
                                      icon: AppIcons.telegram,
                                      url: 'https://t.me/m_kenjabek'),
                                  SmButton(
                                      icon: AppIcons.youtube,
                                      url:
                                          'https://www.youtube.com/@user-yq7sf7zt8i'),
                                  SmButton(
                                      icon: AppIcons.facebook,
                                      url:
                                          'https://www.facebook.com/hiloldasturlari'),
                                  SmButton(
                                      icon: AppIcons.instagram,
                                      url:
                                          'https://instagram.com/mirzokenjabek?utm_source=qr&igshid=ZDc4ODBmNjlmNQ%3D%3D'),
                                ],
                              ),
                            ),
                            const Spacer(),
                          ],
                        ),
                      ),
                      const Spacer(),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
