import 'package:care_app/DoctorsPage/screens/doctors_page.dart';
import 'package:care_app/HomePage/screens/home_page.dart';
import 'package:care_app/HomePage/widgets/bottom_nav_bar.dart';
import 'package:care_app/NumberPage/screens/number_page.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String bottomNavBar = '/';
  static const String homePage = '/homePage';
  static const String doctorsPage = '/doctorsPage';
  static const String numberPage = '/numberPage';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case bottomNavBar:
        return MaterialPageRoute(builder: (_) => const BottomNavBar());
      case homePage:
        return MaterialPageRoute(builder: (_) => HomePage());
      case doctorsPage:
        return MaterialPageRoute(builder: (_) => const DoctorsPage());
      case numberPage:
        return MaterialPageRoute(builder: (_) => const NumberPage());
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
