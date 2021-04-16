import 'package:flutter/material.dart';

class HomePageFeature extends StatelessWidget {
  final IconData icon;
  final String line1;
  final String line2;

  HomePageFeature({
    this.icon,
    this.line1,
    this.line2,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.yellow,
          size: 75,
        ),
        const SizedBox(height: 12),
        Text(
          line1,
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 12),
        Text(
          line2,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        )
      ],
    );
  }
}
