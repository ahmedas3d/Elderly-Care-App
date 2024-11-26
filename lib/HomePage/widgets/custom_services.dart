import 'package:flutter/material.dart';

class CustomServices extends StatelessWidget {
  final List<ServiceModel> services;

  const CustomServices({super.key, required this.services});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 110,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: services.length,
              itemBuilder: (context, index) {
                final service = services[index];
                return Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: ServiceBox(service: service),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ServiceBox extends StatelessWidget {
  final ServiceModel service;

  const ServiceBox({super.key, required this.service});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: service.onTap,
      child: Container(
        width: 160,
        decoration: BoxDecoration(
          color: service.color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(service.icon, size: 40, color: service.color),
            const SizedBox(height: 8),
            Text(
              service.title,
              textDirection: TextDirection.rtl,
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'Almarai',
                fontWeight: FontWeight.bold,
                color: service.color,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class ServiceModel {
  final String title;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;

  ServiceModel({
    required this.title,
    required this.icon,
    required this.color,
    required this.onTap,
  });
}
