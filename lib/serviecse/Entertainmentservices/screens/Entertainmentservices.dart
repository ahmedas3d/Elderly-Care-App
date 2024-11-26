import 'package:flutter/material.dart';

import '../widget/EntertainmentServiceItem.dart';

class EntertainmentServicesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('الخدمات الترفيهية'),
      ),
      body: ListView(
        children: [
          SectionTitle(title: 'الموسيقى'),
          EntertainmentServiceItem(
              name: 'اسم الموسيقى', icon: Icons.music_note),
          EntertainmentServiceItem(
              name: 'اسم الموسيقى', icon: Icons.music_note),
          EntertainmentServiceItem(
              name: 'اسم الموسيقى', icon: Icons.music_note),
          EntertainmentServiceItem(
              name: 'اسم الموسيقى', icon: Icons.music_note),
          EntertainmentServiceItem(
              name: 'اسم الموسيقى', icon: Icons.music_note),
          SectionTitle(title: 'الألعاب'),
          EntertainmentServiceItem(name: 'اسم اللعبة', icon: Icons.games),
          EntertainmentServiceItem(name: 'اسم اللعبة', icon: Icons.games),
          EntertainmentServiceItem(name: 'اسم اللعبة', icon: Icons.games),
          EntertainmentServiceItem(name: 'اسم اللعبة', icon: Icons.games),
          EntertainmentServiceItem(name: 'اسم اللعبة', icon: Icons.games),
        ],
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
