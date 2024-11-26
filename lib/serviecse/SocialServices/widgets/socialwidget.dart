import 'package:flutter/material.dart';

class ServiceItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;
  ServiceItem({required this.title, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(fontSize: 18),
      ),
      leading: Icon(icon, size: 30),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: onTap,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      tileColor: Colors.white,
      contentPadding: const EdgeInsets.all(16),
    );
  }
}
