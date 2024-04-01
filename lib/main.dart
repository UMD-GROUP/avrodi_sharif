import 'package:avrodi_sharif/utils/tools/file_importer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final appDocumentDirectory = await getApplicationDocumentsDirectory();
  Hive.init(appDocumentDirectory.path);
  setup();
  Hive.openBox("settings_box");
  runApp(const App());
}

// class SearchInTextWidget extends StatefulWidget {
//   @override
//   _SearchInTextWidgetState createState() => _SearchInTextWidgetState();
// }
//
// class _SearchInTextWidgetState extends State<SearchInTextWidget> {
//   final ScrollController _scrollController = ScrollController();
//   final TextEditingController _searchController = TextEditingController();
//   String _searchTerm = '';
//   final GlobalKey _textKey = GlobalKey();
//
//   void _jumpToSearchTerm() {
//     final RenderBox textRenderBox =
//         _textKey.currentContext!.findRenderObject() as RenderBox;
//     final double fullTextHeight = textRenderBox.size.height;
//     // This is a very rough approximation. You might need to adjust the multiplier based on your text's average line height and the specific font metrics.
//     final double approximatePosition = (_searchTerm.isNotEmpty)
//         ? (fullTextHeight / _searchController.text.length) *
//             _searchController.text.length
//         : 0.0;
//
//     _scrollController.animateTo(
//       approximatePosition,
//       duration: Duration(milliseconds: 300),
//       curve: Curves.easeInOut,
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Search and Jump in Text'),
//       ),
//       body: Column(
//         children: <Widget>[
//           Padding(
//             padding: EdgeInsets.all(8.0),
//             child: TextField(
//               controller: _searchController,
//               decoration: InputDecoration(
//                 labelText: 'Search',
//                 suffixIcon: IconButton(
//                   icon: Icon(Icons.search),
//                   onPressed: () {
//                     setState(() {
//                       _searchTerm = _searchController.text;
//                       _jumpToSearchTerm();
//                     });
//                   },
//                 ),
//               ),
//             ),
//           ),
//           Expanded(
//             child: SingleChildScrollView(
//               controller: _scrollController,
//               child: Container(
//                 key: _textKey,
//                 padding: EdgeInsets.symmetric(horizontal: 16.0),
//                 child: Text(
//                   "However, a practical and somewhat simplified approach to achieve a similar effect involves using a RichText widget with TextSpans, combined with manual calculations or estimations to scroll to the approximate position. This method won't provide pixel-perfect accuracy but can approximate the functionality you're seeking when dealing with a single, continuous block of text.However, a practical and somewhat simplified approach to achieve a similar effect involves using a RichText widget with TextSpans, combined with manual calculations or estimations to scroll to the approximate position. This method won't provide pixel-perfect accuracy but can approximate the functionality you're seeking when dealing with a single, continuous block of text.However, a practical and somewhat simplified approach to achieve a similar effect involves using a RichText widget with TextSpans, combined with manual calculations or estimations to scroll to the approximate position. This method won't provide pixel-perfect accuracy but can approximate the functionality you're seeking when dealing with a single, continuous block of text.However, a practical and somewhat simplified approach to achieve a similar effect involves using a RichText widget with TextSpans, combined with manual calculations or estimations to scroll to the approximate position. This method won't provide pixel-perfect accuracy but can approximate the functionality you're seeking when dealing with a single, continuous block of text.However, a practical and somewhat simplified approach to achieve a similar effect involves using a RichText widget with TextSpans, combined with manual calculations or estimations to scroll to the approximate position. This method won't provide pixel-perfect accuracy but can approximate the functionality you're seeking when dealing with a single, continuous block of text.Jumping to a specific word within a long text contained in a single Text widget in Flutter, while maintaining smooth scrolling and exact positioning, presents a challenge. This is because Flutter doesn't provide direct support for measuring the pixel offset of a substring within a Text widget or navigating to it directly.Jumping to a specific word within a long text contained in a single Text widget in Flutter, while maintaining smooth scrolling and exact positioning, presents a challenge. This is because Flutter doesn't provide direct support for measuring the pixel offset of a substring within a Text widget or navigating to it directly.Jumping to a specific word within a long text contained in a single Text widget in Flutter, while maintaining smooth scrolling and exact positioning, presents a challenge. This is because Flutter doesn't provide direct support for measuring the pixel offset of a substring within a Text widget or navigating to it directly.Jumping to a specific word within a long text contained in a single Text widget in Flutter, while maintaining smooth scrolling and exact positioning, presents a challenge. This is because Flutter doesn't provide direct support for measuring the pixel offset of a substring within a Text widget or navigating to it directly.Jumping to a specific word within a long text contained in a single Text widget in Flutter, while maintaining smooth scrolling and exact positioning, presents a challenge. This is because Flutter doesn't provide direct support for measuring the pixel offset of a substring within a Text widget or navigating to it directly.Jumping to a specific word within a long text contained in a single Text widget in Flutter, while maintaining smooth scrolling and exact positioning, presents a challenge. This is because Flutter doesn't provide direct support for measuring the pixel offset of a substring within a Text widget or navigating to it directly.Your long text goes here. Include the content that you want to be able to search through and jump to specific words within.Jumping to a specific word within a long text contained in a single Text widget in Flutter, while maintaining smooth scrolling and exact positioning, presents a challenge. This is because Flutter doesn't provide direct support for measuring the pixel offset of a substring within a Text widget or navigating to it directly.Jumping to a specific word within a long text contained in a single Text widget in Flutter, while maintaining smooth scrolling and exact positioning, presents a challenge. This is because Flutter doesn't provide direct support for measuring the pixel offset of a substring within a Text widget or navigating to it directly.Jumping to a specific word within a long text contained in a single Text widget in Flutter, while maintaining smooth scrolling and exact positioning, presents a challenge. This is because Flutter doesn't provide direct support for measuring the pixel offset of a substring within a Text widget or navigating to it directly.Jumping to a specific word within a long text contained in a single Text widget in Flutter, while maintaining smooth scrolling and exact positioning, presents a challenge. This is because Flutter doesn't provide direct support for measuring the pixel offset of a substring within a Text widget or navigating to it directly.Jumping to a specific word within a long text contained in a single Text widget in Flutter, while maintaining smooth scrolling and exact positioning, presents a challenge. This is because Flutter doesn't provide direct support for measuring the pixel offset of a substring within a Text widget or navigating to it directly.Jumping to a specific word within a long text contained in a single Text widget in Flutter, while maintaining smooth scrolling and exact positioning, presents a challenge. This is because Flutter doesn't provide direct support for measuring the pixel offset of a substring within a Text widget or navigating to it directly.Jumping to a specific word within a long text contained in a single Text widget in Flutter, while maintaining smooth scrolling and exact positioning, presents a challenge. This is because Flutter doesn't provide direct support for measuring the pixel offset of a substring within a Text widget or navigating to it directly.Jumping to a specific word within a long text contained in a single Text widget in Flutter, while maintaining smooth scrolling and exact positioning, presents a challenge. This is because Flutter doesn't provide direct support for measuring the pixel offset of a substring within a Text widget or navigating to it directly.Jumping to a specific word within a long text contained in a single Text widget in Flutter, while maintaining smooth scrolling and exact positioning, presents a challenge. Salom.This is because Flutter doesn't provide direct support for measuring the pixel offset of a substring within a Text widget or navigating to it directly.Jumping to a specific word within a long text contained in a single Text widget in Flutter, while maintaining smooth scrolling and exact positioning, presents a challenge. This is because Flutter doesn't provide direct support for measuring the pixel offset of a substring within a Text widget or navigating to it directly.Jumping to a specific word within a long text contained in a single Text widget in Flutter, while maintaining smooth scrolling and exact positioning, presents a challenge. This is because Flutter doesn't provide direct support for measuring the pixel offset of a substring within a Text widget or navigating to it directly.Jumping to a specific word within a long text contained in a single Text widget in Flutter, while maintaining smooth scrolling and exact positioning, presents a challenge. This is because Flutter doesn't provide direct support for measuring the pixel offset of a substring within a Text widget or navigating to it directly",
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
