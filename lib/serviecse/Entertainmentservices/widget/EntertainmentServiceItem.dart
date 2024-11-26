import 'package:flutter/material.dart';

class EntertainmentServiceItem extends StatelessWidget {
  final String name;
  final IconData icon;

  EntertainmentServiceItem({required this.name, required this.icon});

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
