import 'package:care_app/DoctorsPage/widgets/custom_app_bar.dart';
import 'package:care_app/DoctorsPage/widgets/custom_search_bar.dart';
import 'package:care_app/DoctorsPage/widgets/doctor_list.dart';
import 'package:care_app/core/utils/colors.dart';
import 'package:flutter/material.dart';

class DoctorsPage extends StatelessWidget {
  const DoctorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: null,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 40),
        child: Column(
          children: [
            CustomAppBar(
              title: 'الاطباء',
            ),
            SizedBox(height: 10),
            CustomSearchBar(
              title: 'ابحث عن اطباء',
            ),
            SizedBox(height: 10),
            DoctorList(),
          ],
        ),
      ),
    );
  }
}
