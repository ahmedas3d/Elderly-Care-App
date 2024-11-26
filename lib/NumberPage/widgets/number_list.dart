import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NumberList extends StatelessWidget {
  const NumberList({super.key});

  @override
  Widget build(BuildContext context) {
    // بيانات ثابتة للأطباء
    final List<NumberModel> doctors = [
      NumberModel(
        title: "الشرطة",
        image: "assets/images/emergency.svg",
        number: "1235",
        onTap: () {
          // افتح صفحة تفاصيل الأطباء
        },
      ),
      NumberModel(
        title: "الأسعاف",
        image: "assets/images/emergency.svg",
        number: "1235",
        onTap: () {
          // افتح صفحة تفاصيل الأطباء
        },
      ),
      NumberModel(
        title: "الطافئ",
        image: "assets/images/emergency.svg",
        number: "1235",
        onTap: () {
          // افتح صفحة تفاصيل الأطباء
        },
      ),
    ];

    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
        itemCount: doctors.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return _buildDoctorCard(doctors[index]);
        },
      ),
    );
  }

  Widget _buildDoctorCard(NumberModel number) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Container(
        height: 110,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      number.title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Almarai',
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Icon(
                        FontAwesomeIcons.phone,
                        color: Colors.grey,
                        size: 14,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        number.number,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          fontFamily: 'Almarai',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 6,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: number.onTap,
                          child: Container(
                            height: 35,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  FontAwesomeIcons.phone,
                                  color: Colors.white,
                                  size: 14,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  'اتصال',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontFamily: 'Almarai',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 10, bottom: 45),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: SvgPicture.asset(
                  color: Colors.red,
                  number.image,
                  height: 50,
                  width: 50,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NumberModel {
  final String title;
  final String number;
  final String image;
  final VoidCallback onTap;

  NumberModel({
    required this.title,
    required this.number,
    required this.image,
    required this.onTap,
  });
}
