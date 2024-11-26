import 'package:flutter/material.dart';

class customCardWidget extends StatelessWidget {
  const customCardWidget({
    super.key,
    required this.title,
    required this.image,
    required this.value,
    required this.color,
    this.measure,
  });
  final String title;
  final String image;
  final String value;
  final String? measure;
  final int color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: MediaQuery.sizeOf(context).height * 0.2,
        //background: rgba(95, 200, 223, 0.4);
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color(color),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image(image: AssetImage(image)),
            const SizedBox(
              width: 40,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 32,
                    fontFamily: "tajawal",
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      value,
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      measure ?? "",
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
