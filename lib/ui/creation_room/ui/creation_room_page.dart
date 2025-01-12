import 'package:avrodi_sharif/utils/tools/file_importer.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class CreationRoomPage extends StatefulWidget {
  const CreationRoomPage({Key? key}) : super(key: key);

  @override
  State<CreationRoomPage> createState() => _CreationRoomPageState();
}

class _CreationRoomPageState extends State<CreationRoomPage> {
  String docs = '';
  bool isLoad = false;
  Future<void> fetchDocumentContent() async {
    isLoad = true;
    final response = await http.get(Uri.parse(
        "https://docs.google.com/document/d/1bRJUrxTbifhzaWPfj_oi1JNeL1eclt_DJ1Ni8GTf19E/export?format=txt"));
    if (response.statusCode == 200) {
      setState(() {
        docs = response.body;
      });
      isLoad = false;
    } else {
      throw Exception('Failed to load document content');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchDocumentContent();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AdaptiveTheme.of(context).theme.focusColor,
      body: SafeArea(
        child: isLoad
            ? const Center(
                child: CircularProgressIndicator.adaptive(),
              )
            : Column(
                children: [
                  GlobalAppBar(AppBarType.withSettingsAndPop,
                      title: "Ижодхона"),
                  isLoad
                      ? Expanded(
                          child: Center(
                            child: CupertinoActivityIndicator(
                              color: AdaptiveTheme.of(context).theme.hintColor,
                            ),
                          ),
                        )
                      : BlocBuilder<SettingsBloc, SettingsState>(
                          builder: (context, state) {
                            return Expanded(
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 20.w,
                                  ),
                                  child: Text(
                                    docs,
                                    style: TextStyle(
                                        color: AdaptiveTheme.of(context)
                                            .theme
                                            .hintColor,
                                        fontSize: state.fontSize.toDouble()),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                ],
              ),
      ),
    );
  }
}
