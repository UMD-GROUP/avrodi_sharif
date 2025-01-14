import 'package:avrodi_sharif/utils/tools/file_importer.dart';

class MenuButton extends StatelessWidget {
  final MenuItemModel data;

  const MenuButton({required this.data, super.key});

  @override
  Widget build(BuildContext context) {
    return OnTap(
      onTap: () {
        Navigator.pushNamed(context, data.routeName);
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.grey.shade300,
            //     spreadRadius: 1,
            //     blurRadius: 15,
            //   )
            // ],
            color: AdaptiveTheme.of(context).theme.canvasColor,
            borderRadius: BorderRadius.circular(10.h)),
        child: SizedBox(
          height: height(context) * 0.15,
          width: width(context) * 0.45,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Spacer(),
              SvgPicture.asset(data.icon),
              const Spacer(),
              BlocBuilder<SettingsBloc, SettingsState>(
                builder: (context, state) {
                  return Text(
                    data.title,
                    textAlign: TextAlign.center,
                    style: AppTextStyles.labelLarge(
                      context,
                      fontSize: 16,
                    ),
                  );
                },
              ),
              const Spacer(),
              const Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
