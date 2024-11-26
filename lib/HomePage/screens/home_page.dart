import 'package:care_app/core/utils/colors.dart';
import 'package:care_app/HomePage/widgets/custom_banner.dart';
import 'package:care_app/HomePage/widgets/custom_services.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 12, right: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const CustomBanner(),
            const SizedBox(height: 20),
            SizedBox(
              height: 130,
              child: CustomServices(
                services: [
                  ServiceModel(
                    title: 'الأدوية',
                    icon: FontAwesomeIcons.capsules,
                    color: Colors.blue,
                  ),
                  ServiceModel(
                    title: 'الحالة الصحية',
                    icon: FontAwesomeIcons.heartPulse,
                    color: Colors.green,
                  ),
                  ServiceModel(
                    title: 'الموقع',
                    icon: FontAwesomeIcons.locationDot,
                    color: Colors.orange,
                  ),
                  ServiceModel(
                    title: 'الخدمات الاجتماعية',
                    icon: FontAwesomeIcons.users,
                    color: Colors.purple,
                  ),
                  ServiceModel(
                    title: 'الخدمات الترفيهية',
                    icon: FontAwesomeIcons.gamepad,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
            const Text(
              'معلومات عن الامراض',
              textDirection: TextDirection.rtl,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontFamily: 'Almarai',
                color: AppColors.textColor,
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
