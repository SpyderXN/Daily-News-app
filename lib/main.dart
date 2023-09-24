import 'package:flutter/material.dart';
import 'package:flutter_news/pages/home_page.dart';
import 'package:flutter_news/pages/splash_screen.dart';
import 'package:flutter_news/pages/widgets/themes.dart';
import 'package:flutter_news/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: lightColorScheme,
          fontFamily: GoogleFonts.poppins().fontFamily),
      darkTheme: ThemeData(
          useMaterial3: true,
          colorScheme: darkColorScheme,
          fontFamily: GoogleFonts.poppins().fontFamily),
      initialRoute: MyRoutes.splashScreen,
      routes: {
        "/": (context) => const SplashScreen(),
        MyRoutes.homePage:(context) => const HomePage()
      },
    );
  }
}
