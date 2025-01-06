import 'package:flutter/material.dart';
import 'package:google_search_clone/colors.dart';
import 'package:google_search_clone/responsive/CommonViews/search_screen.dart';
import 'package:google_search_clone/responsive/MobileScreens/home_page_screen.dart';
import 'package:google_search_clone/responsive/WebScreens/home_page_web.dart';
import 'package:google_search_clone/responsive/responsive_layout.dart';

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
      title: 'Google Search',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
     home: const SearchScreen(),
     /* home: const ResponsiveLayoutScreen(
          mobileScreenLayout: HomePageScreen(), webScreenLayout: HomePageWeb()),*/
    );
  }
}
