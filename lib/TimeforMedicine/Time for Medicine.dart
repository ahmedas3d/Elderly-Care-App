import 'package:flutter/material.dart';

class MedicationScheduler extends StatefulWidget {
  const MedicationScheduler({super.key});

  @override
  State<MedicationScheduler> createState() => _MedicationSchedulerState();
}

class _MedicationSchedulerState extends State<MedicationScheduler> {
  String? startday = 'اليوم';
  String? endday = 'اليوم';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(width: 23),
            Expanded(
              flex: 2,
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios)),
            ),
            const SizedBox(width: 23),
            const Expanded(
              flex: 5,
              child: Text(
                'مواعيد الأدوية',
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        // Medication Name Input
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Text(
            "ادخل اسم الدواء",
            style: TextStyle(fontSize: 20),
          ),
        ),
        Container(
          height: 50,
          margin: const EdgeInsets.symmetric(horizontal: 10),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextField(
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              hintText: 'ادخل اسم الدواء',
            ),
          ),
        ),
        const SizedBox(height: 45),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                const Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    "تاريخ البدء",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: 110,
                  height: 50,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 202, 196, 196),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: DropdownButton<String>(
                    value: startday,
                    onChanged: (String? newValue) {
                      setState(() {
                        startday = newValue;
                      });
                    },
                    items: <String>['اليوم', 'غداً', 'تاريخ آخر']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    "تاريخ الانتهاء",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  width: 110,
                  height: 50,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 202, 196, 196),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: DropdownButton<String>(
                    value: endday,
                    onChanged: (String? newValue) {
                      setState(() {
                        endday = newValue;
                      });
                    },
                    items: <String>['اليوم', 'غداً', 'تاريخ آخر']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 36),
        GestureDetector(
          onTap: () {
            // Handle the action for confirmation
          },
          child: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              height: 50,
              width: 350,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 22, 72, 206),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text('تأكيد',
                  style: TextStyle(
                    fontSize: 26,
                    fontFamily: 'cairo',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
            ),
          ),
        ),
      ],
    )));
  }
}
