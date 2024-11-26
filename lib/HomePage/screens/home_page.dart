import 'package:care_app/HomePage/widgets/custom_banner.dart';
import 'package:care_app/HomePage/widgets/custom_services.dart';
import 'package:care_app/HomePage/widgets/news_list.dart';
import 'package:care_app/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../carestate/screens/carestate.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final List<NewsModel> newsList = [
    NewsModel(
      title: 'ما هي أزمة التكرار؟',
      imageUrl: 'assets/images/new1.png',
      description:
          'ستتناول هذه المقالة هذا الموضوع، وتقدم نظرة عامة موجزة عنه.',
    ),
    NewsModel(
      title: 'أمراض القلب والحمل؟',
      description:
          'على الرغم من أن حوالي 86% من أطباء القلب الممارسين الذين شملهم الاستطلاع يرون مريضات حوامل على الإطلاق...على الرغم من أن حوالي 86% من أطباء القلب الممارسين الذين شملهم الاستطلاع يرون مريضات حوامل على الإطلاق...',
      imageUrl: 'assets/images/new2.png',
    ),
    NewsModel(
      title: 'ما هي أزمة التكرار؟',
      description:
          'ستتناول هذه المقالة هذا الموضوع، وتقدم نظرة عامة موجزة عنه.',
      imageUrl: 'assets/images/new3.png',
    ),
    NewsModel(
      title: 'أمراض القلب والحمل؟',
      description:
          'على الرغم من أن حوالي 86% من أطباء القلب الممارسين الذين شملهم الاستطلاع يرون مريضات حوامل على الإطلاق...على الرغم من أن حوالي 86% من أطباء القلب الممارسين الذين شملهم الاستطلاع يرون مريضات حوامل على الإطلاق...',
      imageUrl: 'assets/images/new2.png',
    ),
    NewsModel(
      title: 'ما هي أزمة التكرار؟',
      imageUrl: 'assets/images/new1.png',
      description:
          'ستتناول هذه المقالة هذا الموضوع، وتقدم نظرة عامة موجزة عنه.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding:
            const EdgeInsets.only(top: 38, left: 12, right: 12, bottom: 45),
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
                    onTap: () {},
                  ),
                  ServiceModel(
                    title: 'الحالة الصحية',
                    icon: FontAwesomeIcons.heartPulse,
                    color: Colors.green,
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const Carestate();
                      }));
                    },
                  ),
                  ServiceModel(
                    title: 'الموقع',
                    icon: FontAwesomeIcons.locationDot,
                    color: Colors.orange,
                    onTap: () {},
                  ),
                  ServiceModel(
                    title: 'الخدمات الاجتماعية',
                    icon: FontAwesomeIcons.users,
                    color: Colors.purple,
                    onTap: () {},
                  ),
                  ServiceModel(
                    title: 'الخدمات الترفيهية',
                    icon: FontAwesomeIcons.gamepad,
                    color: Colors.red,
                    onTap: () {},
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
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.only(top: 15),
                itemCount: newsList.length,
                itemBuilder: (context, index) {
                  final news = newsList[index];
                  return NewsList(news: news);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
