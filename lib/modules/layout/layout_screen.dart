// import 'package:flutter/material.dart';
// import 'package:islami/modules/layout/screens/Setting/setting_Screen.dart';
// import 'package:islami/modules/layout/screens/hadeth/hadeth_Screen.dart';
// import 'package:islami/modules/layout/screens/quran/quran_Screen.dart';
// import 'package:islami/modules/layout/screens/radio/redio_Screen.dart';
// import 'package:islami/modules/layout/screens/sebha/sebha_screen.dart';
//
// import '../../core/widgets/bg_widget.dart';
//
// class LayoutScreen extends StatefulWidget {
//   static const String routeName = 'Layout';
//
//   LayoutScreen({super.key});
//
//   @override
//   State<LayoutScreen> createState() => _LayoutScreenState();
// }
//
// class _LayoutScreenState extends State<LayoutScreen> {
//   int selctedindex = 0;
//
//   List<Widget> screens = [
//     quranScreen(),
//     hadethSreen(),
//     sebhaScreen(),
//     radioScreen(),
//     settingScreen(),
//   ];
//   List<String> title = [
//     'islami',
//     'hadeth',
//     'sebha',
//     'radio',
//     'Setting',
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return BgWidget(
//       child: Scaffold(
//         backgroundColor: Colors.transparent,
//         appBar: AppBar(
//           title: Text(title[selctedindex]),
//         ),
//         bottomNavigationBar: BottomNavigationBar(
//           onTap: (value) {
//             selctedindex = value;
//             setState(() {});
//           },
//           currentIndex: selctedindex,
//           items: const [
//             BottomNavigationBarItem(
//                 icon: ImageIcon(AssetImage('assets/icons/moshaf_gold.png')),
//                 label: 'quran'),
//             BottomNavigationBarItem(
//                 icon: ImageIcon(
//                     AssetImage('assets/icons/quran-quran-svgrepo-com.png')),
//                 label: 'hadeth'),
//             BottomNavigationBarItem(
//                 icon: ImageIcon(AssetImage('assets/icons/sebha_blue.png')),
//                 label: 'sebha'),
//             BottomNavigationBarItem(
//                 icon: ImageIcon(AssetImage('assets/icons/radio_blue.png')),
//                 label: 'radio'),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.settings), label: 'Setting'),
//           ],
//         ),
//         body: screens[selctedindex],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/modules/layout/screens/Setting/setting_Screen.dart';
import 'package:islami/modules/layout/screens/hadeth/hadeth_Screen.dart';
import 'package:islami/modules/layout/screens/quran/quran_Screen.dart';
import 'package:islami/modules/layout/screens/radio/redio_Screen.dart';
import 'package:islami/modules/layout/screens/sebha/sebha_screen.dart';

import '../../core/widgets/bg_widget.dart';

class LayoutScreen extends StatefulWidget {
  static const String routeName = 'Layout';

  LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int selectedIndex = 0;
  PageController _pageController = PageController();

  List<Widget> screens = [
    quranScreen(),
    hadethSreen(),
    sebhaScreen(),
    radioScreen(),
    settingScreen(),
  ];

  List<String> titles = [
    'quran',
    'hadith',
    'sebha',
    'radio',
    'Setting',
  ];

  @override
  Widget build(BuildContext context) {
    // var provider=Provider.of<SettingProvider>(context);
    var lang = AppLocalizations.of(context)!;
    return BgWidget(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(titles[selectedIndex]),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            selectedIndex = value;
            _pageController.animateToPage(
              selectedIndex,
              duration: Duration(milliseconds: 300),
              curve: Curves.easeInOutSine,
            );
            setState(() {});
          },
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/icons/moshaf_gold.png')),
                label: lang.quran),
            BottomNavigationBarItem(
                icon: ImageIcon(
                    AssetImage('assets/icons/quran-quran-svgrepo-com.png')),
                label: lang.hadith),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/icons/sebha_blue.png')),
                label: lang.sebha),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/icons/radio_blue.png')),
                label: lang.radio),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: lang.setting),
          ],
        ),
        body: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          children: screens,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
