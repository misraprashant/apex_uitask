import 'package:flutter/material.dart';

class CustomSwitchIcon extends StatelessWidget {
  final bool isWorking;

  const CustomSwitchIcon({Key? key, required this.isWorking}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.0,
      height: 22.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: isWorking ? Colors.green : Colors.grey,
      ),
      child: Row(
        mainAxisAlignment:
            isWorking ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Container(
            width: 25.0,
            height: 25.0,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
