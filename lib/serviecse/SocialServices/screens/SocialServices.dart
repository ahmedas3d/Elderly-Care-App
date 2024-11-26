import 'package:care_app/serviecse/SocialServices/widgets/socialwidget.dart';
import 'package:flutter/material.dart';

class SocialServicesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الخدمات الاجتماعية'),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          ServiceItem(
            title: 'الأصدقاء والأقارب',
            icon: Icons.group,
            onTap: () {
              // Add your onTap functionality here
            },
          ),
          SizedBox(height: 16),
          ServiceItem(
            title: 'متجر الأدوية',
            icon: Icons.local_pharmacy,
            onTap: () {
              // Add your onTap functionality here
            },
          ),
        ],
      ),
    );
  }
}
