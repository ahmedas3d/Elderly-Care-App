import 'package:care_app/DoctorsPage/screens/doctors_page.dart';
import 'package:care_app/HomePage/screens/home_page.dart';
import 'package:care_app/NumberPage/screens/number_page.dart';
import 'package:care_app/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  List<PersistentTabConfig> _tabs() => [
        PersistentTabConfig(
          screen: HomePage(),
          item: ItemConfig(
            iconSize: 30,
            activeForegroundColor: AppColors.mainColor,
            inactiveBackgroundColor: AppColors.textColor,
            icon: const Icon(FontAwesomeIcons.house, size: 24),
            title: "الرئيسية",
          ),
        ),
        PersistentTabConfig(
          screen: const NumberPage(),
          item: ItemConfig(
            iconSize: 30,
            activeForegroundColor: AppColors.mainColor,
            inactiveBackgroundColor: AppColors.textColor,
            icon: const Icon(
              FontAwesomeIcons.squarePhone,
              size: 24,
            ),
            title: "ارقام الطوارئ",
          ),
        ),
        PersistentTabConfig(
          screen: DoctorsPage(),
          item: ItemConfig(
            iconSize: 30,
            activeColorSecondary: AppColors.mainColor,
            activeForegroundColor: AppColors.mainColor,
            icon: const Icon(
              FontAwesomeIcons.userDoctor,
              size: 24,
            ),
            title: "الاطباء",
          ),
        ),
        PersistentTabConfig(
          screen: HomePage(),
          item: ItemConfig(
            iconSize: 30,
            activeForegroundColor: AppColors.mainColor,
            inactiveBackgroundColor: AppColors.textColor,
            icon: const Icon(Icons.person),
            title: "الصفحة الشخصية",
          ),
        ),
      ];

  @override
  Widget build(BuildContext context) => PersistentTabView(
        backgroundColor: Colors.white,
        tabs: _tabs(),
        navBarBuilder: (navBarConfig) => Style1BottomNavBar(
          navBarConfig: navBarConfig,
          navBarDecoration:
              const NavBarDecoration(color: AppColors.backgroundColor),
        ),
        navBarOverlap: const NavBarOverlap.full(),
      );
}
