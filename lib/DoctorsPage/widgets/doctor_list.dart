import 'package:care_app/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DoctorList extends StatelessWidget {
  const DoctorList({super.key});

  @override
  Widget build(BuildContext context) {
    // بيانات ثابتة للأطباء
    final List<DoctorModel> doctors = [
      DoctorModel(
        name: "د/مصطفى خالد",
        image: "assets/images/doctor.png",
        speciality: "دكتور عيون",
        rating: "4.5",
        price: "\$100:السعر",
      ),
      DoctorModel(
        name: "د/ محمد احمد",
        image: "assets/images/doctor.png",
        speciality: "دكتور جراحة القلب",
        rating: "4.8",
        price: "\$150:السعر",
      ),
      DoctorModel(
        name: "د/حازم طارق",
        image: "assets/images/doctor.png",
        speciality: "دكتور نفسي",
        rating: "4.7",
        price: "\$120:السعر",
      ),
      DoctorModel(
        name: "د/مصطفى خالد",
        image: "assets/images/doctor.png",
        speciality: "دكتور عيون",
        rating: "4.5",
        price: "\$100:السعر",
      ),
      DoctorModel(
        name: "د/ محمد احمد",
        image: "assets/images/doctor.png",
        speciality: "دكتور جراحة القلب",
        rating: "4.8",
        price: "\$150:السعر",
      ),
      DoctorModel(
        name: "د/حازم طارق",
        image: "assets/images/doctor.png",
        speciality: "دكتور نفسي",
        rating: "4.7",
        price: "\$120:السعر",
      ),
      DoctorModel(
        name: "د/حازم طارق",
        image: "assets/images/doctor.png",
        speciality: "دكتور نفسي",
        rating: "4.7",
        price: "\$120:السعر",
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

  Widget _buildDoctorCard(DoctorModel doctor) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Container(
        height: 115,
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "⭐ ${doctor.rating}",
                          style: const TextStyle(fontSize: 12),
                        ),
                        const Spacer(),
                        Text(
                          doctor.name,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    doctor.speciality,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.access_time,
                        size: 16,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 4),
                      Text(
                        "من 9:00 ص إلى 5:00 م",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, bottom: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: doctor.onTap,
                          child: Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                              color: AppColors.mainColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Icon(
                              FontAwesomeIcons.arrowLeft,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Text(
                          doctor.price,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: AppColors.textColor,
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
              padding: const EdgeInsets.only(right: 5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  doctor.image,
                  height: 95,
                  width: 85,
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

class DoctorModel {
  final String name;
  final String image;
  final String speciality;
  final String rating;
  final String price;
  final VoidCallback? onTap;

  DoctorModel({
    required this.name,
    required this.image,
    required this.speciality,
    required this.rating,
    required this.price,
    this.onTap,
  });
}
