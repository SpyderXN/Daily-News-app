import 'package:flutter/material.dart';
import 'package:flutter_news/pages/categories/business_page.dart';
import 'package:flutter_news/pages/categories/entertainment_page.dart';
import 'package:flutter_news/pages/categories/general_page.dart';
import 'package:flutter_news/pages/categories/health_page.dart';
import 'package:flutter_news/pages/categories/science_page.dart';
import 'package:flutter_news/pages/categories/sports_page.dart';
import 'package:flutter_news/pages/categories/technology_page.dart';
import 'package:flutter_news/pages/categories/top_headline_page.dart';
import 'package:flutter_news/pages/category_page.dart';
import 'package:flutter_news/pages/home_page.dart';
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
      initialRoute: MyRoutes.homePage,
      routes: {
        "/": (context) => const HomePage(),
        // MyRoutes.splashScreen: (context) => const SplashScreen(),
        MyRoutes.homePage: (context) => const HomePage(),
        MyRoutes.categoryPage: (context) => const CategoryPage(),
        MyRoutes.topHeadlinePage: (context) => const TopHeadlinePage(),
        MyRoutes.businessPage: (context) => const BusinessPage(),
        MyRoutes.entertainmentPage: (context) => const EntertainmentPage(),
        MyRoutes.generalPage: (context) => const GeneralPage(),
        MyRoutes.healthPage: (context) => const HealthPage(),
        MyRoutes.sciencePage: (context) => const SciencePage(),
        MyRoutes.sportsPage: (context) => const SportsPage(),
        MyRoutes.technologyPage: (context) => const TechnologyPage()
      },
    );
  }
}
