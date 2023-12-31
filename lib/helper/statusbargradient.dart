import 'package:flutter/material.dart';

class StatusBar extends StatelessWidget {
  final List<String> levels;
  final String currentLevel;

  const StatusBar({super.key, required this.levels, required this.currentLevel});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: levels.map((level) {
        final isActive = level == currentLevel;
        return Row(
          children: [
            CircleAvatar(
              backgroundColor: isActive ? Colors.blue : Colors.grey,
              radius: 8,
            ),
            if (level != levels.last)
              Container(
                width: 150,
                height: 5,
                color: isActive
                    ? Colors.blue
                    : Colors.grey, // Change this color to match your design
              ),
          ],
        );
      }).toList(),
    );
  }
}
