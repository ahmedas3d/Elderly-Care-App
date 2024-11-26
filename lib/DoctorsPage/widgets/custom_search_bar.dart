import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          suffixIcon:
              const Icon(FontAwesomeIcons.magnifyingGlass, color: Colors.grey),
          hintText: title,
          hintTextDirection: TextDirection.rtl,
          hintStyle: const TextStyle(
              fontFamily: 'Almarai', color: Colors.grey, fontSize: 18),
        ),
      ),
    );
  }
}
