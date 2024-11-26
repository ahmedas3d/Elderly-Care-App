import 'package:care_app/core/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.icon,
  });
  final String title;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColors.backgroundColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Spacer(
            flex: 4,
          ),
          Text(
            title,
            style: const TextStyle(
              fontFamily: 'Almarai',
              fontSize: 26,
              color: AppColors.textColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(
            flex: 3,
          ),
          IconButton(
            padding: const EdgeInsets.all(0),
            icon: Icon(
              icon,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
