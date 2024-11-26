import 'package:care_app/HomePage/screens/home_page.dart';
import 'package:care_app/HomePage/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String bottomNavBar = '/';
  static const String homePage = '/homePage';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(builder: (_) => HomePage());
      case bottomNavBar:
        return MaterialPageRoute(builder: (_) => const BottomNavBar());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            appBar: AppBar(),
            body: const Center(
              child: Text('Page not found'),
            ),
          ),
        );
    }
  }
}
