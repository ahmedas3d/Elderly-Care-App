import 'package:flutter/material.dart';

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
          ServiceItem(name: 'اسم الموسيقى', icon: Icons.music_note),
          ServiceItem(name: 'اسم الموسيقى', icon: Icons.music_note),
          ServiceItem(name: 'اسم الموسيقى', icon: Icons.music_note),
          ServiceItem(name: 'اسم الموسيقى', icon: Icons.music_note),
          ServiceItem(name: 'اسم الموسيقى', icon: Icons.music_note),
          SectionTitle(title: 'الألعاب'),
          ServiceItem(name: 'اسم اللعبة', icon: Icons.games),
          ServiceItem(name: 'اسم اللعبة', icon: Icons.games),
          ServiceItem(name: 'اسم اللعبة', icon: Icons.games),
          ServiceItem(name: 'اسم اللعبة', icon: Icons.games),
          ServiceItem(name: 'اسم اللعبة', icon: Icons.games),
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

class ServiceItem extends StatelessWidget {
  final String name;
  final IconData icon;

  ServiceItem({required this.name, required this.icon});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name),
      leading: Icon(
        icon,
      ), // Change icon as needed
      trailing: Icon(Icons.arrow_forward),
      onTap: () {
        // Add your onTap functionality here
      },
    );
  }
}
