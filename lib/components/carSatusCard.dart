import 'package:flutter/material.dart';
import 'package:autowrench/constants/color.dart';

class CarStatusCard extends StatelessWidget {
  final String title;
  final String distanceText;
  final IconData icon;

  const CarStatusCard({
    super.key,
    required this.title,
    required this.distanceText,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),
                Text(distanceText),
                const SizedBox(height: 10),
                Row(
                  children: const [
                    Expanded(flex: 4, child: Divider(thickness: 3)),
                    Expanded(flex: 2, child: Icon(Icons.circle,
                      size: 10,
                      color: Color(0xFF1B3C53),)),
                  ],
                ),
              ],
            ),
          ),
          Icon(icon, size: 40, color: Color(0xFF1B3C53),),
        ],
      ),
    );
  }
}
