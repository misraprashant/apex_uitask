import 'package:flutter/material.dart';

class GradientBar extends StatelessWidget {
  final double percentage;

  GradientBar({required this.percentage});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 10,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: LinearProgressIndicator(
          value: percentage / 100,
          valueColor: const AlwaysStoppedAnimation<Color>(Colors.lightBlueAccent),
          backgroundColor: Colors.grey[300],
        ),
      ),
    );
  }
}
