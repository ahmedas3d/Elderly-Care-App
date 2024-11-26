import 'package:care_app/HomePage/screens/home_page.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String homePage = '/';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(builder: (_) => const HomePage());
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
