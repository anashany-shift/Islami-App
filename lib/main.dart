import 'package:flutter/material.dart';
import 'package:islami/core/theme/app_theme.dart';
import 'package:islami/modules/layout/layout_screen.dart';
import 'package:islami/modules/layout/screens/quran/quran_details_view.dart';
import 'package:islami/modules/splash/screens/splash_screen.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      routes: {
        LayoutScreen.routeName: (context) => LayoutScreen(),
        SplashScreen.routeName: (context) => SplashScreen(),
        Quranview.routeName: (context) => Quranview(),
      },
      initialRoute: SplashScreen.routeName,
    );
  }
}
