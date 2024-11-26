import 'package:flutter/material.dart';

import '../widgets/customCardWidget.dart';

class Carestate extends StatelessWidget {
  const Carestate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              width: double.infinity,
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      size: 26,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Expanded(
                  flex: 5,
                  child: const Text(
                    "الحالة الصحية",
                    style: TextStyle(
                      fontSize: 30,
                      color: Color.fromARGB(137, 0, 0, 0),
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: double.infinity,
              height: 20,
            ),
            customCardWidget(
                title: "ضغط الدم",
                image: "assets/images/Vector 1.png",
                value: "99 ",
                measure: "bpm",
                color: Color.fromARGB(137, 95, 200, 223).value),
            const customCardWidget(
              title: "فصيلة الدم",
              image: "assets/images/mdi_drop.png",
              value: "A+  ",
              //background: rgba(210, 142, 121, 0.4);
              color: 0xC9D28E79,
            ),
            const customCardWidget(
              title: "الوزن",
              image: "assets/images/Vector.png",
              value: "140",
              measure: " mg/dL",
              color: 0xC963B147,
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                margin: const EdgeInsets.only(right: 20),
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 41, 13, 255),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "ارسل تقرير",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.send,
                        color: Colors.white,
                      ),
                    ]),
              ),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      )),
    );
  }
}
